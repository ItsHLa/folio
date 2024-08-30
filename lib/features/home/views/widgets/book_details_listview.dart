import 'package:flutter/material.dart';

import 'book_Image.dart';

class SimilarBooksFeaturedListView extends StatelessWidget {
  const SimilarBooksFeaturedListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(left: 5.0),
          child: BookImage(),
        ),),
    );
  }
}
