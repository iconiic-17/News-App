import 'package:news_app/data/news_model.dart';

abstract class NewsState {}

class NewsLoading extends NewsState {}

class NewsSucces extends NewsState {
  List<Article> articles;
  NewsSucces(this.articles);
}

class NewsError extends NewsState {
  final errorMessage;
  NewsError(this.errorMessage);
}
