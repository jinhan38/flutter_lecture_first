import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch8/open_api_model.dart';
import 'package:sprintf/sprintf.dart';

class OpenApiScreen extends StatefulWidget {
  const OpenApiScreen({super.key});

  @override
  State<OpenApiScreen> createState() => _OpenApiScreenState();
}

class _OpenApiScreenState extends State<OpenApiScreen> {
  List<OpenApiModel> dataList = [];
  bool loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("OpenApiScreen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(300, 60),
            ),

            /// 삼항연산자
            /// loading ? = loading 이라는 변수가 true라면
            /// ? null = true가 맞다면 null
            /// : () => call() = true가 아니라면 () => call()
            onPressed: loading ? null : () => call(),
            child: loading
                ? const CircularProgressIndicator()
                : const Text("Api 호출"),
          ),
          if (dataList.isNotEmpty) ...[
            Expanded(
              child: ListView.builder(
                itemCount: dataList.length,
                itemBuilder: (context, index) {
                  return Text(dataList[index].parseValue());
                },
              ),
            ),
          ],
        ],
      ),
    );
  }

  void call() async {
    dataList.clear();
    loading = true;
    setState(() {});

    Dio dio = Dio();

    String baseUrl = "https://apis.data.go.kr";
    String path = "/1360000/VilageFcstInfoService_2.0/getVilageFcst?";
    String query =
        "serviceKey=%s&pageNo=%d&numOfRows=%d&dataType=JSON&base_date=20230730&base_time=0800&nx=58&ny=125";
    String serviceKey =
        "4HfV1T8aU8VzP%2FDu5mUuv%2Bk4nQFIU2IfXzkw7oD7Wtd8BzpPnkZgDyzahfv9XpJDbtP%2B8S54N4yGCeFKNuZdfw%3D%3D";

    String newQuery = sprintf(query, [serviceKey, 1, 10]);

    String url = "$baseUrl$path$newQuery";

    await Future.delayed(const Duration(seconds: 1));

    Response response = await dio.get(url);
    var json = response.data["response"]["body"]["items"]["item"];

    /// (json as Iterable)
    List<OpenApiModel> data = (json as Iterable).map<OpenApiModel>((e) {
      return OpenApiModel.fromJson(e);
    }).toList();

    dataList.addAll(data);

    loading = false;

    setState(() {});
  }
}
