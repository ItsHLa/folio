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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: DefaultTabController(
        length: 2,
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: SizedBox(
                height: MediaQuery.of(context).size.height*.2,
                  child: Image.asset(AssetsData.logoApp)),
            ),
            const SliverFillRemaining(
              child: Column(
                children: [
                  AuthTabBar(),
                  AuthTabBarView(),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
