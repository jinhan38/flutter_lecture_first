import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch8/notifier_view_model.dart';

class NotifierSecondScreen extends StatefulWidget {
  const NotifierSecondScreen({super.key});

  @override
  State<NotifierSecondScreen> createState() => _NotifierSecondScreenState();
}

class _NotifierSecondScreenState extends State<NotifierSecondScreen> {

  final NotifierViewModel _vm = NotifierViewModel();

  VoidCallback? listener;

  @override
  void initState() {
    listener = () {
      setState(() {});
    };
    _vm.addListener(listener!);
    super.initState();
  }

  @override
  void dispose() {
    _vm.removeListener(listener!);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NotifierSecondScreen"),
      ),
      body: Column(
        children: [
          Center(
            child: Text(
              _vm.count.toString(),
              style: const TextStyle(fontSize: 30),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              _vm.countUp();
            },
            child: const Text("count up"),
          ),
        ],
      ),
    );
  }
}
