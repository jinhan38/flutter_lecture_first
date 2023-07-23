import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch7/news/news_model.dart';
import 'package:flutter_lecture_first/ch7/news_detail_screen.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final Dio dio = Dio();
  final List<NewsModel> dataList = [];
  int page = 1;
  bool loading = false;

  ScrollController scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      if (scrollController.position.atEdge) {
        bool isBottom = false;
        if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent) {
          isBottom = true;
        }

        if (isBottom && !loading) {
          page++;
          String url = makeUrl(page);
          getApi(url);
        }
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsScreen'),
      ),
      body: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                    onPressed: () async {
                      String url = makeUrl(page);
                      getApi(url);
                    },
                    child: const Text("Call")),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: ElevatedButton(
                    onPressed: () {
                      page = 1;
                      dataList.clear();
                      setState(() {});
                    },
                    child: const Text("Clear")),
              ),
              const SizedBox(width: 10),
            ],
          ),
          Expanded(
            child: ListView.separated(
              controller: scrollController,
              itemBuilder: (context, index) {
                return item(dataList[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10);
              },
              itemCount: dataList.length,
            ),
          ),
          if (loading) ...[
            const Center(
              child: CircularProgressIndicator(),
            ),
          ],
        ],
      ),
    );
  }

  Future<void> getApi(String url) async {
    loading = true;
    setState(() {});
    final response = await dio.get(url);
    print('response : $response');
    List<NewsModel> result =
        response.data["articles"].map<NewsModel>((element) {
      return NewsModel.fromJson(element);
    }).toList();
    dataList.addAll(result);
    loading = false;
    setState(() {});
  }

  Widget item(NewsModel newsModel) {
    return InkWell(
      onTap: () {
        // Navigator 사용해서 상세 화면으로 이동
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) {
            return NewsDetailScreen(newsModel: newsModel);
          },
        ));
      },
      child: Row(
        children: [
          const SizedBox(width: 10),
          Hero(
            tag: newsModel.url,
            child: Image.network(
              newsModel.urlToImage,
              width: 150,
              height: 150,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress != null &&
                    loadingProgress.expectedTotalBytes != null) {
                  /// 퍼센트 계산
                  int percent = ((loadingProgress.cumulativeBytesLoaded /
                              loadingProgress.expectedTotalBytes!) *
                          100)
                      .ceil();
                  // expectedTotalBytes = 5000
                  // cumulativeBytesLoaded = 500
                  // ceil = 반올림 하고 int 타입으로 변경
                  if (percent == 100) return child;

                  return SizedBox(
                    width: 150,
                    height: 150,
                    child: Text(
                      percent.toString(),
                      style: const TextStyle(fontSize: 25),
                    ),
                  );
                }

                return child;
              },
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: 150,
                  height: 150,
                  color: Colors.grey.withOpacity(0.5),
                  child: const Icon(
                    Icons.error_outline,
                    size: 40,
                  ),
                );
              },
            ),
          ),
          const SizedBox(width: 20),
          Expanded(child: Text(newsModel.title)),
        ],
      ),
    );
  }

  String makeUrl(int page) {
    String url = 'https://newsapi.org/v2/everything?q=tesla'
        '&from=2023-07-20'
        '&sortBy=publishedAt'
        '&apiKey=f4e382a85f8e45a5878357459c397275&pageSize=20';
    url += "&page=$page";

    return url;
  }
}
