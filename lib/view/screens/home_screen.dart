import 'package:flutter/material.dart';
import 'package:news_app/core/api/result_api.dart';
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
  bool isLoading = true;
  String? error;

  @override
  void initState() {
    super.initState();
    getArticles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: isLoading
          ? _loadingView()
          : error != null
          ? _errorView()
          : _successView(),
    );
  }

  Widget _loadingView() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _successView() {
    return ListView.builder(
      itemBuilder: (context, index) => ItemCardNews(article: articles[index]),
      itemCount: articles.length,
    );
  }

  Widget _errorView() {
    return Center(
      child: Text(
        "Error from server",
        style: TextStyle(fontSize: 40, color: Colors.red),
      ),
    );
  }

  void getArticles() async {
    final result = await ApiManager.getNews();
    switch (result) {
      case Success<NewsModel>():
        articles = result.data.articles ?? [];

      case Error<NewsModel>():
        error = result.error;
    }
    isLoading = false;
    setState(() {});
  }
}

String imageTest =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJlKLwQA5Q9M6LyY_XhgsSt-sX1RtL8nBQmyu-iyAXyo2OTACfbokfdRB&s=10";
