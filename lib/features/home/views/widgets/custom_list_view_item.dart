import 'package:flutter/material.dart';

import '../../../../core/assets.dart';
class CustomFeaturedBookItem extends StatelessWidget {
  const CustomFeaturedBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 9 / 16 ,
      child: Container(
        width: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AssetsData.test_logoApp)
            )
        ),
      ),
    );
  }
}
