import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:newsapp/models/article_model.dart';

class NewsService{

  final Dio dio;
  NewsService(this.dio);

 Future<List<ArticleModel>> getNews({required String category}) async {
  try {
  var response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=75f14e4f2b4f422cb52b305c4194f261&category=$category');
  
  Map<String,dynamic> jsonData = response.data ;
  
  List<dynamic> articles = jsonData['articles'];
  List<ArticleModel> articleslist=[];
  
  for (var article in articles) {
  
    ArticleModel articleModel=ArticleModel.fromJson(article);
      
     
      articleslist.add(articleModel);
    
  }
  
  return articleslist;
}  catch (e) {
  return [] ;
  // TODO
}
  

  
}


}