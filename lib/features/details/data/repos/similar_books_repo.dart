import 'package:bookly/constants.dart';
import 'package:bookly/core/api/api_consumer.dart';
import 'package:bookly/core/api/end_points.dart';
import 'package:bookly/core/errors/exception.dart';
import 'package:bookly/features/details/data/models/similar_book_model.dart';
import 'package:dartz/dartz.dart';

class SimilarBooksRepo {
  final ApiConsumer api;

  SimilarBooksRepo({required this.api});

  Future<Either<String, List<SimilarBookModel>>> getSimilarBooks({
    required int id,
  }) async {
    try {
      final response = await api.get(
        EndPoints.similarBooks(id),
        quearyParamteries: {ApiKey.apiKey: kApiKey, ApiKey.number: 20},
      );
 final List data = response[ApiKey.similarBooks];

    final books = data
        .map((e) => SimilarBookModel.fromJson(e))
        .toList();
      return right(books);
    } on ServerException catch (e) {
      return left(e.errModel.message);
    }
  }
}
