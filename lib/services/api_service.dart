import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_application/models/article_model.dart';

class ApiServices {
  final String apiKey = '69a37b440de54545868891915d0582e2';

  Future<List<Article>> getArticle() async {
    http.Response res = await http
        .get('https://newsapi.org/v2/top-headlines?country=eg&apiKey=$apiKey');
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
