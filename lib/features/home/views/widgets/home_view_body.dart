import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folio/core/styles.dart';
import 'customized_app_bar.dart';
import 'featured_book_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomizeAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 32,),
          Text('Best Books' , style: Styles.titleMedium,)
        ],
      ),
    );
  }
}

