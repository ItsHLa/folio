import 'package:flutter/material.dart';
import 'package:folio/features/home/views/widgets/home_view_body.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: HomeViewBody(),
    );
  }
}
