import 'package:flutter/material.dart';
import 'package:news_app/data/api_manager.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view/widgets/item_card_news.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Article> articles = [];

  @override
  void initState() {
    super.initState();
    getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemCardNews(article: articles[index]),
        itemCount: articles.length,
      ),
    );
  }

  void getArticles() async {
    var newsModel = await ApiManager.getNews();
    articles = newsModel.articles ?? [];
    setState(() {});
  }
}

String imageTest =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJlKLwQA5Q9M6LyY_XhgsSt-sX1RtL8nBQmyu-iyAXyo2OTACfbokfdRB&s=10";
