import 'package:flutter/material.dart';
import 'package:news_app/view/screens/home_screen.dart';
import 'package:news_app/view/widgets/image_news.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Details News")),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20),
        child: Column(
          spacing: 20,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageNews(image: imageTest, height: 300),
            Text(
              "Ukraine's President Zelensky to BBC: Blood money being paid for Russian oil",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "Ukraine's President Zelensky to BBC: Blood money being paid for Russian oil",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
