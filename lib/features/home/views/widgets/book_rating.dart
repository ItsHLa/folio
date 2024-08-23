import 'package:flutter/material.dart';

import '../../../../core/utils/styles.dart';
class BookRating extends StatelessWidget {
  const BookRating({super.key, required this.mainAxisAlignment});
  final MainAxisAlignment mainAxisAlignment ;

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:mainAxisAlignment ,
      children: [
        const Icon(Icons.star , color: Color(0xffFFDD4F),size: 15,),
        const SizedBox(width: 6.3,),
        Text('4.8' ,style: Styles.textStyle16.copyWith(fontWeight: FontWeight.bold),),
        const SizedBox(width: 5,),
         Text('(2998)',style: Styles.textStyle14.copyWith(color: Colors.white54,fontWeight: FontWeight.w600))
      ],
    );
  }
}