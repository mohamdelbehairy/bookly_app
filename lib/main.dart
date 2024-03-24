import 'package:bokkly_app/constants.dart';
import 'package:bokkly_app/core/utils/app_router.dart';
import 'package:bokkly_app/core/utils/service_locator.dart';
import 'package:bokkly_app/features/home/data/repos/home_repo_impl.dart';
import 'package:bokkly_app/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:bokkly_app/features/home/presentation/manager/newset_books/newset_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) => FeaturedBooksCubit(getIt.get<HomeRepoImpl>())),
        BlocProvider(
            create: (context) => NewsetBooksCubit(getIt.get<HomeRepoImpl>())),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
            scaffoldBackgroundColor: kPrimaryColor,
            textTheme:
                GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
        themeMode: ThemeMode.dark,
      ),
    );
  }
}
