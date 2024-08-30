import 'package:flutter/material.dart';

import '../../../../constants.dart';
import '../../../../core/widgets/custom_button.dart';
class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          CustomButton(
            label: '19.99',
            backgroundColor: Colors.white,
            onPressed: (){},
            bottomRight: 0,
            topRight:0,
            colorLabel: Colors.black,
          ),
          CustomButton(
            label: 'preview',
            backgroundColor:  kThemeColor,
            onPressed: (){},
            bottomLeft: 0,
            topLeft:0 ,
            colorLabel: Colors.white,
          ),
        ],
      ),
    );
  }
}
