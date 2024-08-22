import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folio/features/home/views/widgets/custom_list_view_item.dart';

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
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width*.18),
            child: const BookImage(),
          )
        ],
      ),
    );
  }
}
// the padding must be relative to screen here for the quality


