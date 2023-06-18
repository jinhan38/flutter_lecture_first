import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  final String imageUrl =
      "https://blog.newswire.co.kr/wp-content/uploads/2015/07/%EC%97%AC%EB%A6%84%EC%B2%A0-%EB%A7%88%EC%BC%80%ED%8C%85.jpg";

  // https://jinhan38.com/132
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ImageScreen"),
      ),
      body: Column(
        children: [
          Image.asset("assets/summer.jpg"),

          /// .jpg, .jpeg, .png
          /// png : 배경이 투명한 이미지
          /// .jpg, .jpeg : 일반적인 이미지
          Container(
            color: Colors.red,
            width: 300,
            height: 300,
            child: Image.network(
              imageUrl,
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}
