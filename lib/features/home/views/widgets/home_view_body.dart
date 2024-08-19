import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'customized_app_bar.dart';
import 'featured_book_list_view.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomizeAppBar(),
        FeaturedBooksListView()
      ],
    );
  }
}

