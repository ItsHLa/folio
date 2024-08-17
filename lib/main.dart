import 'package:flutter/material.dart';
import 'package:folio/constants.dart';
import 'package:get/get.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FolioApp());
}

class FolioApp extends StatelessWidget {
  const FolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      theme: ThemeData().copyWith(
        scaffoldBackgroundColor: kPrimaryColor
      ),
      home: const SplashView(),
    );
  }
}
