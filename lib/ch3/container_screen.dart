import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 400,
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(10),
          // margin: EdgeInsets.all(30),
          /// decoration을 사용하면 color 사용 불가
          decoration: BoxDecoration(
            color: Colors.purpleAccent,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(
              color: Colors.black,
              width: 8,
            ),
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,

              /// 1.57 -> 시계방향으로 90도
              /// 3.14 -> 시계방향으로 180도 회전
              /// 6.28 -> 시계방향으로 360도 회전
              /// -1.57 -> 반 시계방향으로 90도
              /// -3.14 -> 반 시계방향으로 180도 회전
              /// -6.28 -> 반 시계방향으로 360도 회전
              transform: GradientRotation(1),
              colors: [
                Colors.red,
                Colors.orange,
                Colors.yellow,
                Colors.green,
                Colors.blue,
                Colors.indigo,
                Colors.purple,
              ],
            ),
          ),
          foregroundDecoration: BoxDecoration(
            color: Colors.grey,
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 20,
                spreadRadius: 20,

                /// Offset : x, y 값을 넣는 클래스
                /// 기준점 Container의 중심
                /// x : 50 -> 오른쪽으로 50 이동
                /// y : 50 -> 아래로 50 이동
                /// x : -50 -> 왼쪽으로 50 이동
                /// y : -50 -> 위로 50 이동
                offset: Offset(15, 15),

                blurStyle: BlurStyle.normal,
              ),
            ],
          ),
          child: const Text(
            "컨테이너",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
