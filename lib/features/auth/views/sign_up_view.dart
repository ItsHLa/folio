import 'package:flutter/material.dart';
import 'package:folio/core/widgets/auth_bottom.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils/app_router.dart';
import 'widgets/auth_filed_view.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const AuthFieldsBody(),
        AuthButton(label: 'SignUp',onPressed: (){
          GoRouter.of(context).push(AppRouter.kHomePath);
        },),
        const SizedBox(height: 16,)
      ],
    );
  }
}
