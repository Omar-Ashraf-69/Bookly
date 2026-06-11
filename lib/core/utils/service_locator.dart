import 'package:bookly/core/api/dio_consumer.dart';
import 'package:bookly/features/details/data/repos/similar_books_repo.dart';
import 'package:bookly/features/details/presentation/cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/cubit/cubit/book_cubit.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:bookly/features/search/presentation/cubit/search_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerLazySingleton<DioConsumer>(() => DioConsumer(dio: Dio()));
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(api: getIt<DioConsumer>()),
  );
  getIt.registerSingleton<BookCubit>(BookCubit(repo: getIt<HomeRepo>()));

  getIt.registerLazySingleton<SimilarBooksRepo>(
    () => SimilarBooksRepo(api: getIt<DioConsumer>()),
  );
  getIt.registerFactory<SimilarBooksCubit>(
    () => SimilarBooksCubit(repo: getIt<SimilarBooksRepo>()),
  );

  getIt.registerLazySingleton<SearchRepo>(
    () => SearchRepo(api: getIt<DioConsumer>()),
  );
  getIt.registerFactory<SearchCubit>(
    () => SearchCubit(repo: getIt<SearchRepo>()),
  );
}
