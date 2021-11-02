import 'package:bloc/bloc.dart';
import 'package:socialapp/bloc/article/article_event.dart';
import 'package:socialapp/bloc/article/article_state.dart';
import 'package:socialapp/data/model/api_result_model.dart';
import 'package:socialapp/data/repository/article_repository.dart';

class ArticleBloc extends Bloc<ArticleEvent, ArticleState> {
  ArticleRepository repository;

  ArticleBloc({required this.repository}) : super(ArticleInitialState());

  ArticleState get initialState => ArticleInitialState();

  @override
  Stream<ArticleState> mapEventToState(ArticleEvent event) async* {
    if (event is FetchArticlesEvent) {
      yield ArticleLoadingState();
      try {
        List<Articles> articles = await repository.getArticles();
        yield ArticleLoadedState(articles: articles);
      } catch (e) {
        yield ArticleErrorState(message: e.toString());
      }
    }
  }
}
