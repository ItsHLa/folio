import 'package:flutter/material.dart';
import 'package:folio/features/home/views/widgets/best_books_list_item.dart';

class BestBookListView extends StatelessWidget {
  const BestBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.zero,
        itemBuilder: (context, index) {
          if(index %2 == 0){
            return const BestBooksListItem(price: 'free',);
          }else{
            return const BestBooksListItem(price: '19.99',);
          }
        }
        ,
    );
  }
}
