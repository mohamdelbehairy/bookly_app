import 'package:bokkly_app/features/home/presentation/views/book_detaills_view.dart';
import 'package:bokkly_app/features/home/presentation/views/home_view.dart';
import 'package:bokkly_app/features/search/presention/view/search_view.dart';
import 'package:bokkly_app/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(path: kHomeView, builder: (context, state) => const HomeView()),
      GoRoute(
          path: kBookDetailsView,
          builder: (context, state) => const BookDetailsView()),
      GoRoute(
          path: kSearchView, builder: (context, state) => const SearchView()),
    ],
  );
}
