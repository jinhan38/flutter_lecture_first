import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch6/route_third_screen.dart';

class RouteSecondScreen extends StatelessWidget {
  const RouteSecondScreen({required this.count, super.key});

  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RouteSecondScreen'),
      ),
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            /// ++count -> count를 1증가
            /// count+= 1 -> count를 1증가
            /// count +1 => count를 증가시킨 것이 아니라 count에 1을 더한 값
            Navigator.pop(context, count + 1);
          },
          child: const Text("Pop"),
        ),
        const SizedBox(height: 30),
        Text(
          "count : $count",
          style: const TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
          onPressed: () {
            /// 첫번째 라우트(화면)까지 되돌아가기
            Navigator.popUntil(context, (route) {
              return route.isFirst;
            });
          },
          child: Text('popUtil'),
        ),
        ElevatedButton(
          onPressed: () {
            /// 특정 화면으로 이동,
            /// 기존의 화면을 전부 제거
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const RouteThirdScreen();
                },
              ),
              (route) => route.isFirst,
            );
          },
          child: Text("pushAndRemoveUntil"),
        ),
      ],
    );
  }
}
