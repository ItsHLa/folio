import 'package:flutter/material.dart';
class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  List categories = ["Drama" , 'Action','Horror' ,'Romance', 'Sci-fi'];
  Widget build(BuildContext context) {
    return  Wrap(
      spacing: 5,
     // alignment: WrapAlignment.spaceAround,
        children: List.generate(
          categories.length, (index) =>  Chip(
            shape: const StadiumBorder(),
              label: Text(categories[index])),
        )

    );
  }
}