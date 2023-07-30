import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch8/get_x_second_screen.dart';
import 'package:flutter_lecture_first/ch8/my_controller.dart';
import 'package:get/get.dart';

class GetXScreen extends StatefulWidget {
  const GetXScreen({super.key});

  @override
  State<GetXScreen> createState() => _GetXScreenState();
}

class _GetXScreenState extends State<GetXScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GetXScreen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Obx(() {
            return Center(
              child: Text(
                MyController.to.count.value.toString(),
                style: const TextStyle(fontSize: 30),
              ),
            );
          }),
          ElevatedButton(
            onPressed: () {
              MyController.to.countUp();
            },
            child: const Text("count up"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const GetXSecondScreen();
                  },
                ),
              );
            },
            child: const Text("go second"),
          ),
        ],
      ),
    );
  }
}
