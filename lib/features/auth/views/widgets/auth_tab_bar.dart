import 'package:flutter/material.dart';

import '../../../../constants.dart';

class AuthTabBar extends StatelessWidget {
  const AuthTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 8.0),
      child: Card(
        elevation: 10,
        color: kPrimaryColor,
        child:  TabBar(
            labelColor: kThemeColor,
            unselectedLabelColor: Color(0xffffffff),
            indicatorColor: kThemeColor,
            tabs:[
              Tab(child: Text('Login')),
              Tab(child: Text('Sign Up'))
            ]),
      ),
    );
  }
}
