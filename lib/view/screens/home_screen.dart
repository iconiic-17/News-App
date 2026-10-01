import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view/widgets/item_card_news.dart';
import 'package:news_app/view_model/news_cubit.dart';
import 'package:news_app/view_model/news_state.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewsCubit()..getArticles(),
      child: Scaffold(
        appBar: AppBar(title: Text("News")),
        body: BlocBuilder<NewsCubit, NewsState>(
          builder: (context, state) {
            if (state is NewsSucces) {
              return _successView(state.articles);
            }
            if (state is NewsError) {
              return _errorView(state.errorMessage);
            }
            return _loadingView();
          },
        ),
      ),
    );
  }

  Widget _loadingView() {
    return Center(child: CircularProgressIndicator());
  }

  Widget _successView(List<Article> articles) {
    return ListView.builder(
      itemBuilder: (context, index) => ItemCardNews(article: articles[index]),
      itemCount: articles.length,
    );
  }

  Widget _errorView(String error) {
    return Center(
      child: Text(error, style: TextStyle(fontSize: 40, color: Colors.red)),
    );
  }
}

String imageTest =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJlKLwQA5Q9M6LyY_XhgsSt-sX1RtL8nBQmyu-iyAXyo2OTACfbokfdRB&s=10";
