import 'package:flutter/material.dart';

class FutureScreen extends StatefulWidget {
  const FutureScreen({super.key});

  @override
  State<FutureScreen> createState() => _FutureScreenState();
}

class _FutureScreenState extends State<FutureScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FutureScreen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ElevatedButton(
              onPressed: () async {
                print('함수 호출 전');
                String result = await futureBasic();
                print("result : $result");
                print('함수 호출 후');
              },
              child: Text("delay")),
        ],
      ),
    );
  }

  /// async : await 키워드 사용할 수 있게 함
  Future<String> futureBasic() async {
    print('시작 전');
    await Future.delayed(
      Duration(seconds: 1),
      () {
        print('1초 이후');
      },
    );
    print('끝');
    return "futureBasic 종료";
  }
}
