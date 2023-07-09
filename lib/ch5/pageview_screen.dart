import 'package:flutter/material.dart';

class PageViewScreen extends StatefulWidget {
  const PageViewScreen({super.key});

  @override
  State<PageViewScreen> createState() => _PageViewScreenState();
}

class _PageViewScreenState extends State<PageViewScreen> {
  final PageController pageController = PageController();

  double opacity = 1;

  @override
  void initState() {
    /// addListener : PageView가 동작 할 때 마다 호출
    pageController.addListener(() {
      if (pageController.page! < 1) {
        setState(() {
          opacity = pageController.page!;
        });
      }
      print(pageController.page);
    });
    super.initState();
  }

  /// 화면이 종료될 때 호출
  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PageViewScreen'),
      ),
      body: Column(
        children: [
          Opacity(
            opacity: opacity,
            child: Container(
              color: Colors.black,
              height: 50,
            ),
          ),
          Expanded(
            child: PageView(
              controller: pageController,
              onPageChanged: (value) {
                print('value : $value');
              },
              children: [
                Container(color: Colors.red), // index : 0
                Container(color: Colors.green), // index : 1
                Container(color: Colors.brown), // index : 2
              ],
            ),
          ),
        ],
      ),
    );
  }
}
