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

  @override
  String toString() {
    return 'NewsModel{author: $author, title: $title, description: $description, '
        'url: $url, urlToImage: $urlToImage, '
        'publishedAt: $publishedAt, content: $content}';
  }
}
