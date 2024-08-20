import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folio/core/assets.dart';
import 'package:folio/core/styles.dart';

import 'book_rating.dart';

class BestBooksListItem extends StatelessWidget {
  const BestBooksListItem({super.key, required this.price});
  final String price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0 , right: 8 , bottom: 8),
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 9 / 16,
              child: Container(
                decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                    image: const DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AssetsData.test_logoApp))
                ),
              ),
            ),
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
                    Text('$price',style: Styles.textStyle20.copyWith(fontWeight: FontWeight.bold),),
                    const Spacer(),
                    const BookRating()
                  ],
                ),
                const SizedBox(height: 3,),
              ],
            
            ),
          )
        ],
      ),
    );
  }
}


