import 'package:flutter/material.dart';
import 'package:folio/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';
class BookDetailsAppBar extends StatelessWidget {
  const BookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(onPressed: (){
          GoRouter.of(context).pop(AppRouter.kHomePath);
        }, icon: const Icon(Icons.close)),
        IconButton(onPressed: (){}, icon: const Icon(Icons.shopping_cart))
      ],
    );
  }
}