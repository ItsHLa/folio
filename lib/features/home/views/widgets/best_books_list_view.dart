import 'package:flutter/material.dart';
import 'package:folio/features/home/views/widgets/best_books_list_item.dart';

class BestBookListView extends StatelessWidget {
  const BestBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
     // shrinkWrap: true  ,to let ListView.builder know all elements (make the list know its high)
      physics: const NeverScrollableScrollPhysics(),//to let it wont scroll the ui must scroll
      padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
            return const BestBooksListItem(price: 'free',);
        }
        ,
    );
  }
}
