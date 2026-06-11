import 'package:bookly/constants.dart';
import 'package:bookly/core/api/api_consumer.dart';
import 'package:bookly/core/api/end_points.dart';
import 'package:bookly/core/errors/exception.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

class SearchRepo {
  final ApiConsumer api;

  SearchRepo({required this.api});
  Future<Either<String, List<BookModel>>> searchBooks({
    required String name,
  }) async {
    try {
      final response = await api.get(
        EndPoints.searchBooks,
        quearyParamteries: {
          ApiKey.number: 30,
          ApiKey.apiKey: kApiKey,
          ApiKey.query: name,
        },
      );
      final books = (response[ApiKey.books] as List)
          .expand((e) => e as List)
          .map((book) => BookModel.fromJson(book))
          .toList();
      return right(books);
    } on ServerException catch (e) {
      return left(e.errModel.message);
    }
  }
}
