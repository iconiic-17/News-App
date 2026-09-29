import 'package:flutter/material.dart';
import 'package:news_app/view/screens/home_screen.dart';
import 'package:news_app/view/widgets/image_news.dart';

class ItemCardNews extends StatelessWidget {
  const ItemCardNews({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImageNews(image: imageTest),
          Text("Europe", style: Theme.of(context).textTheme.titleSmall),
          Text(
            "Russian warship: Moskva sinks in Black Sea",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ],
      ),
    );
  }
}
