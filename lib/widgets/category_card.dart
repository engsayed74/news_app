import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                category: category.categoryName,
              );
            },
          ),
        );
      },
      child: Padding(
        padding: EdgeInsets.only(right: 16),
        child: Container(
          width: 160,
          height: 100,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(category.image), fit: BoxFit.fill),
              color: Colors.amber,
              borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text(
            category.categoryName,
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
        ),
      ),
    );
  }
}
