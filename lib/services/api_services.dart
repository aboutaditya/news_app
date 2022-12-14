import 'dart:convert';

import 'package:news_app/model/api_article.dart';
import 'package:http/http.dart';

class ApiService {
  final endPointUrl =
      'https://newsapi.org/v2/top-headlines?country=india&apiKey=92d239923d124d88b472746043b0dfb0';
  // api key = 92d239923d124d88b472746043b0dfb0
  Future<List<Article>> getArticle() async {
    Response res = await get(endPointUrl as Uri);

    //first of all let's check that we got a 200 statu code: this mean that the request was a succes
    if (res.statusCode == 200) {
      Map<String, dynamic> json = jsonDecode(res.body);

      List<dynamic> body = json['articles'];

      //this line will allow us to get the different articles from the json file and putting them into a list
      List<Article> articles =
          body.map((dynamic item) => Article.fromJson(item)).toList();

      return articles;
    } else {
      throw ("Can't get the Articles");
    }
  }
}
