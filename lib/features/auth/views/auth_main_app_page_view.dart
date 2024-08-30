import 'package:flutter/material.dart';
import 'package:folio/core/widgets/auth_bottom.dart';
import 'package:folio/features/auth/views/widgets/auth_view_body.dart';

import '../../../core/utils/assets.dart';
class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body :AuthBody()
    );
  }
}
