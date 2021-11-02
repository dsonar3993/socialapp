import 'package:socialapp/data/model/api_result_model.dart';
import 'package:flutter/material.dart';

class ArticleDetailPage extends StatelessWidget {
  Articles article;
  ArticleDetailPage({key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cricket"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(5.0),
        children: <Widget>[
          Hero(
            tag: article.urlToImage,
            child: Image.network(article.urlToImage),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(10.0),
            child: Text(
              article.title,
              style: const TextStyle(fontSize: 20.0),
            ),
          ),
          Container(
            alignment: Alignment.topRight,
            margin: const EdgeInsets.all(5.0),
            child: Text(article.publishedAt),
          ),
          Text(article.content),
        ],
      ),
    );
  }
}
