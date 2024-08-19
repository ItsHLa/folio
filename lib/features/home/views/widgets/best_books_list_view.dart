import 'package:flutter/material.dart';
import 'package:folio/features/home/views/widgets/best_books_list_item.dart';

class BestBookListView extends StatelessWidget {
  const BestBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) => const BestBooksListItem(),
    );
  }
}
