import 'package:flutter/material.dart';

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
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(10),
            child: Image.network(
              imageTest,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
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

String imageTest =
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRZJlKLwQA5Q9M6LyY_XhgsSt-sX1RtL8nBQmyu-iyAXyo2OTACfbokfdRB&s=10";
