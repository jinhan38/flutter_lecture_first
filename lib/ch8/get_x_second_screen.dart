import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch8/my_controller.dart';
import 'package:get/get.dart';

class GetXSecondScreen extends StatelessWidget {
  const GetXSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GetXSecondScreen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(() {
            return Center(
              child: Text(
                MyController.to.count.value.toString(),
                style: TextStyle(fontSize: 30),
              ),
            );
          }),
          ElevatedButton(
            onPressed: () {
              MyController.to.countDown();
            },
            child: Text("count down"),
          ),
        ],
      ),
    );
  }
}
