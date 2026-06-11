part of 'search_cubit.dart';

sealed class SearchState {}

final class SearchInitial extends SearchState {}

final class SearchLoading extends SearchState {}

final class SearchSuccess extends SearchState {
  final List<BookModel> books;

  SearchSuccess({required this.books});
}

final class SearchFaileur extends SearchState {
  final String errorMessage;

  SearchFaileur({required this.errorMessage});
}
