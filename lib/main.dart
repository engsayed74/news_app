import 'package:flutter/material.dart';
import 'package:newsapp/services/news_service.dart';
import 'package:newsapp/views/home_view.dart';
import 'package:newsapp/widgets/news_tile.dart';
import 'package:dio/dio.dart';

void main() {
  
  
  runApp(const NewsApp());
}





class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
