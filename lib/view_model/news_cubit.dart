import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/core/api/result_api.dart';
import 'package:news_app/data/api_manager.dart';
import 'package:news_app/data/news_model.dart';
import 'package:news_app/view_model/news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsLoading());

  void getArticles() async {
    emit(NewsLoading());
    final result = await ApiManager.getNews();
    switch (result) {
      case Success<NewsModel>():
        var articles = result.data.articles ?? [];
        emit(NewsSucces(articles));
      case Error<NewsModel>():
        var error = result.error;
        emit(NewsError(error));
    }
  }
}
