import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:folio/core/assets.dart';
class SplashBody extends StatelessWidget {
  const SplashBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        alignment: Alignment.center,
        child: Image.asset(
            AssetsData.logo,
        ),
      ),
    );
  }
}
