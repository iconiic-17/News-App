import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:news_app/core/routes/app_routes.dart';
import 'package:news_app/core/theme/app_theme.dart';
import 'package:news_app/data/api_manager.dart';
import 'package:news_app/view/screens/details_screen.dart';
import 'package:news_app/view/screens/home_screen.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      initialRoute: AppRoutes.homeScreen,
      routes: {
        AppRoutes.homeScreen: (context) => HomeScreen(),
        AppRoutes.detailsScreen: (context) => DetailsScreen(),
      },
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.light,
    );
  }
}
