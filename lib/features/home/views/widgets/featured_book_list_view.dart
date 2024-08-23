import 'package:flutter/material.dart';

import 'book_Image.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height *.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => const Padding(
            padding: EdgeInsets.only(left: 5.0),
            child: BookImage(),
          ),),
    );
  }
}
