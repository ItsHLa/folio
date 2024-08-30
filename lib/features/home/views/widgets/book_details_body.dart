import 'package:flutter/material.dart';
import 'package:folio/features/home/views/widgets/book_Image.dart';
import 'package:folio/features/home/views/widgets/book_rating.dart';
import '../../../../core/utils/styles.dart';
import 'book_details_listview.dart';
import 'books_action.dart';
import 'books_details_appBar.dart';
import 'category_list.dart';
class BookDetailsBody extends StatelessWidget {
  const BookDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(child: SafeArea(child: BookDetailsAppBar()),),
          SliverToBoxAdapter(child: Row(
            children: [
               SizedBox(
                 height:MediaQuery.of(context).size.height*.23,
                  child: const BookImage()),
              const SizedBox(width: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 16),
                  SizedBox(
                    width: MediaQuery.of(context).size.width*.6,
                    child: Text(
                      'Harry Potter and The Goblet Of Fire',
                      style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'J.K. Rowling',
                    textAlign: TextAlign.center,
                    style: Styles.textStyle18.copyWith(
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                        color: Colors.white70
                    ),
                  ),
                  const BookRating(mainAxisAlignment: MainAxisAlignment.center,),
                  const SizedBox(height: 16),
                ],
              )
            ],
          ),),
          SliverFillRemaining(
            child: ListView(
              padding: EdgeInsets.zero,
             physics:const NeverScrollableScrollPhysics(),
              children: [
                const SizedBox(height: 16),
                const CategoryList(),
                const SizedBox(height: 8,),
                Text(
                  'About :',
                  style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  ),
                ),
                Text(
                  'nshgshgsgsgsfbsgufhgoufshgusfhgufhgufhguhfughfughuburghufhgufhgoufshgusfhgufhgufhguhfughfughuburghufhgufhgoufshgusfhgufhgufhguhfughfughusfugburghufhgufhgoufshgusfhgufhgufhguhfughfughu',
                  style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                  ),
                ),

                const SizedBox(height: 16,),
                const BooksAction(),
                const SizedBox(height : 16),
                Text('You can also Like :' , style: Styles.textStyle14.copyWith(
                    fontWeight: FontWeight.w600
                ),),
                const SizedBox(height : 16),
                const SimilarBooksFeaturedListView()
                ,const SizedBox(height : 16),
              ],
            ),
          )
        ],
      ),
    );
  }
}
// the padding must be relative to screen here for the quality




