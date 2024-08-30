import 'package:flutter/material.dart';
class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return  Wrap(
        children: List.generate(
          10, (index) => const Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: Chip(label: Text('Action'))),
        )

    );
  }
}