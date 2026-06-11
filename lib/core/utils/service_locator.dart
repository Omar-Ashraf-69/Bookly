import 'package:bookly/core/api/dio_consumer.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';
import 'package:bookly/features/home/presentation/cubit/cubit/book_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void init() {
  getIt.registerLazySingleton<DioConsumer>(() => DioConsumer(dio: Dio()));
  getIt.registerLazySingleton<HomeRepo>(
    () => HomeRepo(api: getIt<DioConsumer>()),
  );
  getIt.registerLazySingleton<BookCubit>(
    () => BookCubit(repo: getIt<HomeRepo>()),
  );
}
