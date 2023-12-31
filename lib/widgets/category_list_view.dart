import 'package:flutter/material.dart';
import 'package:projectx/widgets/category.dart';

import '../model/category_model.dart';

class CategoryListView extends StatelessWidget {
   CategoryListView({super.key});
 final List<CategoryModel> categories = [
    CategoryModel(
      image: 'assets/images/business.avif',
      title: 'Business',
    ),
    CategoryModel(
      image: 'assets/images/entertaiment.avif',
      title: 'Entertainment',
    ),
    CategoryModel(
      image: 'assets/images/health.avif',
      title: 'Health',
    ),
    CategoryModel(
      image: 'assets/images/science.avif',
      title: 'Science',
    ),
    CategoryModel(
      image: 'assets/images/technology.jpeg',
      title: 'Technology',
    ),
    CategoryModel(
      image: 'assets/images/sports.avif',
      title: 'Sports',
    ),
    CategoryModel(
      image: 'assets/images/general.avif',
      title: 'General',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount:categories.length,
        itemBuilder: (context, index) => CategoryCard(
          category: categories[index],
        ),),
    );
  }
}