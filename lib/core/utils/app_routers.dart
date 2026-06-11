import 'package:bookly/core/utils/service_locator.dart';
import 'package:bookly/features/details/presentation/cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/presentation/cubit/cubit/book_cubit.dart';
import 'package:bookly/features/search/presentation/view/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocProvider;

import '../../features/home/presentation/views/home_view.dart';
import '../../features/details/presentation/views/details_view.dart';
import '../../features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouters {
  static const kHomeView = '/homeView';
  static const kDetailsView = '/DetailsView';
  static const kSearchView = '/SearchView';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => BlocProvider(
          create: (_) => getIt<BookCubit>()..getBooks(),
          child: const HomeView(),
        ),
      ),
      GoRoute(
        path: kDetailsView,
        builder: (context, state) {
          final book = state.extra as BookModel;
          return BlocProvider(
            create: (context) => getIt<SimilarBooksCubit>(),
            child: DetailsView(book: book),
          );
        },
      ),
      GoRoute(
        path: kSearchView,
        builder: (context, state) => const SearchView(),
      ),
    ],
  );
}
