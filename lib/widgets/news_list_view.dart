import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/news_tile.dart';



  

  


class NewsListView extends StatelessWidget{

  List<ArticleModel> articles ;
  
NewsListView({super.key ,required this.articles});
 

  @override
  Widget build(BuildContext context) {

    
    return  SliverList(
            delegate:
                SliverChildBuilderDelegate(childCount: articles.length, (context, index) {
      return  Padding(
        padding: EdgeInsets.only(bottom: 32),
        child: NewsTile( articleModel: articles[index],),
      );
    }))

        /*ListView.builder(
      shrinkWrap: true,
      physics:const NeverScrollableScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context, index) {
        return const Padding(
          padding:  EdgeInsets.only(bottom: 16),
          child: NewsTile(),
        );
      
    },)*/
        ;
  }
}
