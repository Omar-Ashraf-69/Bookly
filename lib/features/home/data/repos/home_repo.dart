import 'package:bookly/constants.dart';
import 'package:bookly/core/api/api_consumer.dart';
import 'package:bookly/core/api/end_points.dart';
import 'package:bookly/core/errors/exception.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

class HomeRepo {
  final ApiConsumer api;

  HomeRepo({required this.api});

  Future<Either<String, List<BookModel>>> getBooks() async {
    try {
      final response = await api.get(
        EndPoints.searchBooks,
        quearyParamteries: {
          ApiKey.query: "promgramming",
          ApiKey.number: 50,
          ApiKey.apiKey: kApiKey,
        },
      );
      List<BookModel> books =  (response as List)
        .map((book) => BookModel.fromJson(book))
        .toList() ;
      return right(books);
    } on ServerException catch (e) {
      return left(e.errModel.message);
    }
  }
}
