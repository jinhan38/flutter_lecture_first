import 'package:flutter/material.dart';

class RouteNamedSecondScreen extends StatefulWidget {
  const RouteNamedSecondScreen({super.key});

  @override
  State<RouteNamedSecondScreen> createState() => _RouteNamedSecondScreenState();
}

class _RouteNamedSecondScreenState extends State<RouteNamedSecondScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments;

    /// args 라는 변수를 int 타입으로 변환(casting)
    count = args as int;
    return Scaffold(
      appBar: AppBar(
        title: const Text("RouteNameSecondScreen"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Center(
            child: Text(
          count.toString(),
          style: const TextStyle(fontSize: 30),
        )),
        ElevatedButton(
          onPressed: () {
            /// Navigator pop
            Navigator.pop(
              context,
              count + 1,
            );
          },
          child: const Text('Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            /// Navigator.pushNamedReplacement
            Navigator.pushReplacementNamed(context, '/third');
          },
          child: Text("PushNamedReplacement"),
        ),
        ElevatedButton(
          onPressed: () {
            /// 세번째 화면으로 이동,
            /// 첫 번째 라우트인 HomeScreen 빼고 전부 제거
            Navigator.pushNamedAndRemoveUntil(
              context,
              '/third',
              (route) => route.isFirst,
            );
          },
          child: Text("pushNamedAndRemoveUntil"),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/third');
          },
          child: Text("go Thrid"),
        ),
      ],
    );
  }
}
