part of 'book_cubit.dart';

sealed class BookState {}

final class BookInitial extends BookState {}

final class BookLoading extends BookState {}

final class BookSuccess extends BookState {}

final class BookFaileur extends BookState {
  final String errorMessage;

  BookFaileur({required this.errorMessage});
}
