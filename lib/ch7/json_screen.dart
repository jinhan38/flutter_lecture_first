import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class JsonScreen extends StatefulWidget {
  const JsonScreen({super.key});

  @override
  State<JsonScreen> createState() => _JsonScreenState();
}

class _JsonScreenState extends State<JsonScreen> {
  String id = "";
  String name = "";
  String info = "";
  String career = "";
  String framework = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("JsonScreen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: () {
                  rootBundle.loadString("assets/data.json").then((value) {
                    print('value : $value');
                    // json 형식을 dart 언어에서 사용할 수 있도록 변환 필요
                    // json -> dart : jsonDecode(따옴표 제거하는 기능), jsonParse
                    // dart -> json : jsonEncode
                    dynamic result = jsonDecode(value);
                    print('result : $result');
                    id = result["id"];
                    name = result["info"]["name"];
                    info = result["info"].toString();
                    career = result["info"]["description"]["career"];
                    framework = result["framework"].toString();
                    setState(() {});
                  });
                },
                child: const Text("json read")),
            ElevatedButton(
                onPressed: () {
                  String a = "jinhan";
                  int age = 33;
                  bool invite = true;
                  Map<String, dynamic> data = {
                    "a": a,
                    "age": age,
                    "invite": invite,
                  };
                  String je = jsonEncode(data);
                  print(je);
                },
                child: Text("json encode")),
            Column(
              children: [
                Text(
                  "id : $id",
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "name : $name",
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "info : $info",
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "career : $career",
                  style: const TextStyle(fontSize: 30),
                ),
                Text(
                  "framework : $framework",
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
