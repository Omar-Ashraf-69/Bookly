part of 'similar_books_cubit_cubit.dart';

sealed class SimilarBooksState {}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  final   List<SimilarBookModel> similarBooks;

  SimilarBooksSuccess({required this.similarBooks});

}

final class SimilarBooksFaileur extends SimilarBooksState {
  final String errorMessage;

  SimilarBooksFaileur({required this.errorMessage});

}
