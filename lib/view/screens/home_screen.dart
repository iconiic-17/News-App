import 'package:flutter/material.dart';
import 'package:news_app/view/widgets/item_card_news.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("News")),
      body: Column(children: [ItemCardNews()]),
    );
  }
}

String imageTest =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJlKLwQA5Q9M6LyY_XhgsSt-sX1RtL8nBQmyu-iyAXyo2OTACfbokfdRB&s=10";
