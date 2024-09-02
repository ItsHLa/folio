import 'package:flutter/material.dart';
import 'package:folio/core/utils/app_router.dart';
import 'package:folio/core/widgets/auth_bottom.dart';
import 'package:folio/features/auth/views/auth_main_app_page_view.dart';
import 'package:go_router/go_router.dart';

import 'widgets/auth_filed_view.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AuthFieldsBody(),
        AuthButton(label: 'Login' , onPressed: (){
          GoRouter.of(context).push(AppRouter.kHomePath);
        },),
        const SizedBox(height: 16,)
      ],
    );
  }
}
