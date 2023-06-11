import 'package:flutter/material.dart';

class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        /// double.infinity 가능한 최대 사이즈 지정
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

          /// MainAxisSize.min 특성은 children의 사이즈로 고정
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            /// Expanded 남은 공간을 모두 사용해서 확장
            Expanded(
              flex: 6,
              child: _container(100, 100, Colors.red),
            ),
            Expanded(
              flex: 2,
              child: _container(100, 100, Colors.orange),
            ),

            Expanded(
              flex: 2,
              child: _container(100, 100, Colors.green),
            ),
          ],
        ),
      ),
    );
  }

  Widget _container(
    double width,
    double height,
    Color color,
  ) {
    return Container(
      width: width,
      height: height,
      color: color,
    );
  }
}
