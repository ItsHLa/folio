import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../login_view.dart';
import '../sign_up_view.dart';

class AuthTabBarView extends StatelessWidget {
  const AuthTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: TabBarView(
        children: [
          SignUp(),
          Login(),
        ],
      ),
    );
  }
}
