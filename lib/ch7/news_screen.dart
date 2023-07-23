import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatefulWidget {
  const NewsScreen({super.key});

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  final Dio dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewsScreen'),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () async {
                final response = await dio.get('https://pub.dev');
                print(response.data);
              },
              child: Text("Call")),
        ],
      ),
    );
  }
}
