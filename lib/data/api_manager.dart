import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:news_app/data/news_model.dart';

class ApiManager {
  static Future<NewsModel> getNews() async {
    //  https://newsapi.org/v2/everything?q=bitcoin&apiKey=971e2cb779fa4483be07b2b6affe75de
    Uri url = Uri.https("newsapi.org", "/v2/everything", {
      "q": "bitcoin",
      "apiKey": "971e2cb779fa4483be07b2b6affe75de",
    });
    var respone = await http.get(url);
    var responseString = respone.body;
    var json = jsonDecode(responseString);
    return NewsModel.fromJson(json);
  }
}
