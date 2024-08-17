import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/assets.dart';
class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Column(
      children: [
        CustomizeAppBar(),
      ],
    );
  }
}

class CustomizeAppBar extends StatelessWidget {
  const CustomizeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0 , vertical: 16),
      child: Row(
        children: [
          Image.asset(AssetsData.logoApp , height: 100, width: 100,),
          const Spacer(),
          IconButton(onPressed: (){}, icon: const Icon(Icons.search))
        ],
      ),
    );
  }
}
