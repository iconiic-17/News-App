import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:news_app/core/api/result_api.dart';
import 'package:news_app/data/news_model.dart';

class ApiManager {
  static Future<ResultApi<NewsModel>> getNews() async {
    //  https://newsapi.org/v2/everything?q=bitcoin&apiKey=971e2cb779fa4483be07b2b6affe75de
    try {
      Uri url = Uri.https("newsapi.org", "/v2/everything", {
        "q": "bitcoin",
        "apiKey": "971e2cb779fa4483be07b2b6affe75de",
      });
      var respone = await http.get(url);
      if (respone.statusCode >= 200 && respone.statusCode < 300) {
        var responseString = respone.body;
        var json = jsonDecode(responseString);
        return Success(NewsModel.fromJson(json));
      } else {
        return Error("Error from server");
      }
    } on SocketException {
      return Error("Error from internet. try again...");
    } catch (e) {
      return Error("Error : $e");
    }
  }
}
