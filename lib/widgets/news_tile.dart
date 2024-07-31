import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key,required this.articleModel});

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadiusDirectional.circular(6),
          child: articleModel.image!=null?   Image.network(
            articleModel.image!,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ) :AboutDialog(),
        ),
        const SizedBox(
          height: 12,
        ),
         Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.w500, color: Colors.black),
        ),
        const SizedBox(
          height: 8,
        ),
         Text(
           articleModel.subtitle!=null? articleModel.subtitle! :articleModel.title,
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        )
      ],
    );
  }
}
