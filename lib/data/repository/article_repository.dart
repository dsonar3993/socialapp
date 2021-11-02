import 'package:socialapp/data/model/api_result_model.dart';
import 'package:socialapp/res/strings/strings.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

abstract class ArticleRepository {
  Future<List<Articles>> getArticles();
}

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<List<Articles>> getArticles() async {
    var response = await http.get(Uri.parse(AppStrings.bitcoinArticleUrl));
    if (response.statusCode == 200) {
      var data = json.decode(response.body);
      List<Articles> articles = ApiResultModel.fromJson(data).articles;
      if (articles.isNotEmpty) {
        return articles;
      } else {
        articles.add(Articles(title: 'This is dummy'));
        return articles;
      }
    } else {
      throw Exception();
    }
  }
}
