import 'dart:convert';

import 'package:news_app/model/api_article.dart';
import 'package:http/http.dart';

class ApiService {
  final endPointUrl =
      'https://newsapi.org/v2/everything?q=Apple&from=2022-12-14&sortBy=popularity&apiKey=92d239923d124d88b472746043b0dfb0';
  // api key = 92d239923d124d88b472746043b0dfb0
  Future<List<Article>> getArticle() async {
    Response res = await get(Uri.parse(endPointUrl));

    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();
      print('api');
      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
