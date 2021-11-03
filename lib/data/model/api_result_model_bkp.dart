class ApiResultModel {
  String status = "";
  int totalResults = 0;
  List<Articles> articles = [];

  ApiResultModel({status, totalResults, articles});

  ApiResultModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    totalResults = json['totalResults'];
    if (json['articles'] != null) {
      articles = [];
      json['articles'].forEach((v) {
        articles.add(Articles.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['totalResults'] = totalResults;
    if (articles.isNotEmpty) {
      data['articles'] = articles.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Articles {
  Source source = Source();
  String author = "";
  String title = "";
  String description = "";
  String url = "";
  String urlToImage = "";
  String publishedAt = "";
  String content = "";

  Articles(
      {source,
      author,
      title,
      description,
      url,
      urlToImage,
      publishedAt,
      content});

  Articles.fromJson(Map<String, dynamic> json) {
    source = Source.fromJson(json['source']);
    author = json['author'];
    title = json['title'];
    description = json['description'];
    url = json['url'];
    urlToImage = json['urlToImage'];
    publishedAt = json['publishedAt'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['source'] = source.toJson();
    data['author'] = author;
    data['title'] = title;
    data['description'] = description;
    data['url'] = url;
    data['urlToImage'] = urlToImage;
    data['publishedAt'] = publishedAt;
    data['content'] = content;
    return data;
  }
}

class Source {
  String id = "";
  String name = "";
  Source({id, name});

  Source.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    return data;
  }
}
