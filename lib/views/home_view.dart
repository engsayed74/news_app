import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/widgets/categories_listview.dart';
import 'package:newsapp/widgets/category_card.dart';
import 'package:newsapp/widgets/news_list_view.dart';
import 'package:newsapp/widgets/news_list_view_builder.dart';
import 'package:newsapp/widgets/news_tile.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News ',
              ),
              Text(
                'Cloud',
                style: TextStyle(color: Colors.orange),
              )
            ],
          ),
        ),
        body: 
        
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: CategorieslistView()),
              SliverToBoxAdapter(child: SizedBox(height: 32,),),
              //SliverToBoxAdapter(child: NewsListView(),)
              NewsListViewBuilder(
                category: 'general',
              ),
            ],
          ),
         // child: Column(
           // children: [
             // CategorieslistView(),
              //SizedBox(
                //height: 32,
              //),
              //Expanded(child: NewsListView()),
            //],
          //),
        ));
  }
}

/*class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({
    super.key,
  });

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

   List<ArticleModel> articles = [];

   bool isLoading = true;
  @override
   void initState() {
     super.initState();
     getGeneralNews();
   }

    Future<void> getGeneralNews() async {
     articles = await NewsService(Dio()).getNews();
   isLoading = false;
     setState(() {});
   }
  @override
  Widget build(BuildContext context) {
    return isLoading ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) : NewsListView( articles: articles,);
  }
}*/
