import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:folio/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor ,  this.topLeft = 16,  this.bottomRight = 16,  this.bottomLeft =16,  this.topRight = 16,required this.label, this.colorLabel, this.onPressed});
  final Color? backgroundColor;
  final double topLeft;
  final double bottomRight;
  final double bottomLeft;
  final double topRight;
  final String label;
  final Color? colorLabel;
  final  void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return  Expanded(
      child: SizedBox(
        height: 48,
        child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: backgroundColor,
            shape:   RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(topLeft) ,
                  bottomRight: Radius.circular(bottomRight) ,
                  bottomLeft: Radius.circular(bottomLeft) ,
                  topRight: Radius.circular(topRight))
            )
          ),
            onPressed: onPressed,
            child:  Text(label , style: Styles.textStyle16.copyWith(
              color: colorLabel,
              fontWeight: FontWeight.bold
            ),)),
      ),
    );
  }
}
