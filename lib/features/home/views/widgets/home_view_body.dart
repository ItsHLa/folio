import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:folio/constants.dart';
import 'package:folio/core/utils/styles.dart';
import 'best_books_list_view.dart';
import 'customized_app_bar.dart';
import 'featured_book_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [ Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CustomizeAppBar(),
            ),
              FeaturedBooksListView(),
              Padding(
                padding: EdgeInsets.all(padding),
                child: Text('Best Books' , style: Styles.textStyle18,),
              ),
            ],
          ) ,
        ),
        SliverFillRemaining(child: BestBookListView(),)// fills the rest part of the ui
      ],
    )  ;
  }
}

// we used customScrollView to make all the ui scroll
// it only accept Slivers that's why we used SliverToBoxAdapter to put the widgets inside
