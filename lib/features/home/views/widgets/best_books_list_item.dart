import 'package:flutter/material.dart';
import 'package:folio/core/assets.dart';

class BestBooksListItem extends StatelessWidget {
  const BestBooksListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          SizedBox(
            height: 125,
            child: AspectRatio(
              aspectRatio: 9 / 16,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage(AssetsData.test_logoApp))
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
