import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:folio/core/styles.dart';
import 'best_books_list_view.dart';
import 'customized_app_bar.dart';
import 'featured_book_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomizeAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 20,),
          Text('Best Books' , style: Styles.textStyle18,),
          SizedBox(height: 20,),
          Expanded(child: BestBookListView())
        ],
      ),
    );
  }
}


