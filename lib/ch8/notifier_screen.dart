import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch8/notifier_second_screen.dart';
import 'package:flutter_lecture_first/ch8/notifier_view_model.dart';

class NotifierScreen extends StatefulWidget {
  const NotifierScreen({super.key});

  @override
  State<NotifierScreen> createState() => _NotifierScreenState();
}

class _NotifierScreenState extends State<NotifierScreen> {
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
    _vm.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("NotifierScreen"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
              child: Text(_vm.count.toString(),
                  style: const TextStyle(fontSize: 30))),
          ElevatedButton(
            onPressed: () {
              _vm.countUp();
            },
            child: const Text("count up"),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const NotifierSecondScreen();
                  },
                ),
              );
            },
            child: const Text("go Second"),
          ),
        ],
      ),
    );
  }
}
