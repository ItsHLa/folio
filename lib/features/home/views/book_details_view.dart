import 'package:flutter/material.dart';
import 'package:folio/features/home/views/widgets/book_details_body.dart';
class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BookDetailsBody(),
    );
  }
}
