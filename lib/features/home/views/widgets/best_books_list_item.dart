import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folio/core/utils/app_router.dart';
import 'package:folio/core/utils/styles.dart';
import 'package:folio/features/home/views/widgets/book_Image.dart';
import 'package:go_router/go_router.dart';

import 'book_rating.dart';

class BestBooksListItem extends StatelessWidget {
  const BestBooksListItem({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        GoRouter.of(context).push(AppRouter.kBookDetailsPath);
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 20.0 , right: 20 , bottom: 8),
        child: Row(
          children: [
            const SizedBox(
              height: 125,
              child: BookImage(),
            ),
            const SizedBox(width: 30,),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width *.5,
                    child: const Text(
                        'Harry Potter and The Goblet Of Fire',
                      overflow:TextOverflow.ellipsis,
                      maxLines: 2,
                      style: Styles.textStyle20,
                    ),
                  ),
                  const SizedBox(height: 3,),
                  const Text(
                    'J.K. Rowling',
                    style: Styles.textStyle14,
                  ),
                  Row(
                    children: [
                      Text(price,style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                      const Spacer(),
                      const BookRating(mainAxisAlignment: MainAxisAlignment.start,)
                    ],
                  ),
                  const SizedBox(height: 3,),
                ],

              ),
            )
          ],
        ),
      ),
    );
  }
}


