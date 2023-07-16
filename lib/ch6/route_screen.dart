import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch6/route_second_screen.dart';

class RouteScreen extends StatefulWidget {
  const RouteScreen({super.key});

  @override
  State<RouteScreen> createState() => _RouteScreenState();
}

class _RouteScreenState extends State<RouteScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouteScreen"),
      ),
      body: _body(),
    );
  }

  Widget _body() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return RouteSecondScreen(count: count);
                },
              ),
            ).then((value) {
              count = value;

              /// 값을 돌려 받은 다음에 화면 갱신
              setState(() {});
            });
          },
          child: Text("Push"),
        ),
        Text(
          "count : $count",
          style: TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 30),
        ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return RouteSecondScreen(count: count);
                  },
                ),
              );
            },
            child: Text("Push Replacement")),
      ],
    );
  }
}
