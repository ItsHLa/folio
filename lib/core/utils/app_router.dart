import 'package:folio/features/home/views/book_details_view.dart';
import 'package:folio/features/home/views/home_page.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter{
  static const kHomePath = '/homeView';
  static const kBookDetailsPath = '/BookDetails';
  static final route = GoRouter(
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const SplashView(),
        ),
        GoRoute(
          path: kHomePath,
          builder: (context, state) => const HomeView(),
        ),
        GoRoute(
          path: kBookDetailsPath,
          builder: (context, state) => const BookDetailsView(),
        )
      ]
  );
}