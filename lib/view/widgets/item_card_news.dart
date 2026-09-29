import 'package:flutter/material.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view/screens/home_screen.dart';
import 'package:news_app/view/widgets/image_news.dart';

class ItemCardNews extends StatelessWidget {
  const ItemCardNews({super.key, required this.article});

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageNews(image: article.urlToImage ?? imageTest),
          Text(
            article.author ?? "",
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            article.description ?? "",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
