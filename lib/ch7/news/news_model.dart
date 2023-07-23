class NewsModel {
  String author;
  String title;
  String description;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  NewsModel({
    required this.author,
    required this.title,
    required this.description,
    required this.url,
    required this.urlToImage,
    required this.publishedAt,
    required this.content,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
        author: json["author"] ?? "",
        title: json["title"] ?? "",
        description: json["description"] ?? "",
        url: json["url"] ?? "",
        urlToImage: json["urlToImage"] ?? "",
        publishedAt: json["publishedAt"] ?? "",
        content: json["content"] ?? "");
  }

  Map<String, dynamic> toMap() {
    return {
      "author": author,
      "title": title,
      "description": description,
      "url": url,
      "urlToImage": urlToImage,
      "publishedAt": publishedAt,
      "content": content,
    };
  }

  @override
  String toString() {
    return 'NewsModel{author: $author, title: $title, description: $description, '
        'url: $url, urlToImage: $urlToImage, '
        'publishedAt: $publishedAt, content: $content}';
  }
}
