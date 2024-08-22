import 'package:flutter/material.dart';

import 'books_details_appBar.dart';
class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          SafeArea(child: BookDetailsAppBar())
        ],
      ),
    );
  }
}


