import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:folio/features/auth/views/widgets/tab_bar_view.dart';

import '../../../../constants.dart';
import '../../../../core/utils/assets.dart';
import '../../../../core/widgets/auth_bottom.dart';
import 'auth_tab_bar.dart';
class AuthBody extends StatelessWidget {
  const AuthBody({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: SizedBox(
              height: MediaQuery.of(context).size.height*.25,
                child: Image.asset(AssetsData.logoApp)),
          ),
          const SliverFillRemaining(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Column(
                children: [
                  AuthTabBar(),
                  AuthTabBarView(),
                  AuthButton(label: 'Login'),
                  SizedBox(height: 50,)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
