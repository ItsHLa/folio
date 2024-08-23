import 'package:flutter/material.dart';
import 'package:folio/features/home/views/widgets/book_Image.dart';

import '../../../../core/utils/styles.dart';
import 'books_details_appBar.dart';
class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          const SafeArea(child: BookDetailsAppBar()),
          const SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.21),
            child: const BookImage(),
          ),
          const SizedBox(height: 34),
           SizedBox(
             width: 200,
             child: Text(
              'Harry Potter and The Goblet Of Fire',
               textAlign: TextAlign.center,
              style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                       ),
           ),
          const SizedBox(height: 6),
           Text(
            'J.K. Rowling',
            style: Styles.textStyle18.copyWith(
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.w500,
              color: Colors.white70
            ),
          ),
        ],
      ),
    );
  }
}
// the padding must be relative to screen here for the quality


