import 'package:news_app/model/api_source.dart';

class Article {
  Source source;
  String title;
  String url;
  String urlToImage;
  String publishedAt;
  String content;

  Article(
      {required this.source,
      required this.title,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});
  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      source: Source.fromJson(json['source']),
      title: json['title'].toString() ,
      url: json['url'].toString() ,
      urlToImage: json['urlToImage'].toString(),
      publishedAt: json['publishedAt'].toString(),
      content: json['content'].toString(),
    );
  }
}
