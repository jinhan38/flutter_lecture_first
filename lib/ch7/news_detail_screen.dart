import 'package:flutter/material.dart';
import 'package:flutter_lecture_first/ch7/news/news_model.dart';

class NewsDetailScreen extends StatelessWidget {
  const NewsDetailScreen({required this.newsModel, super.key});

  final NewsModel newsModel;

  @override
  Widget build(BuildContext context) {
    print('newsModel : $newsModel');
    return Scaffold(
      appBar: AppBar(
        title: const Text("Detail News"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: newsModel.url,
              child: Image.network(
                newsModel.urlToImage,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                newsModel.title,
                style: const TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "기자 : ${newsModel.author}",
                style: const TextStyle(fontSize: 16),
              ),
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("설명\n${newsModel.description}"),
            ),
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text("본문\n${newsModel.content}"),
            ),
          ],
        ),
      ),
    );
  }
}
