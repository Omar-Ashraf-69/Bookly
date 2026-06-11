import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/search/data/repos/search_repo.dart';
import 'package:flutter/material.dart';

part 'search_state.dart';

class SearchCubit extends Cubit<SearchState> {
  final SearchRepo repo;

  SearchCubit({required this.repo}) : super(SearchInitial());
  final TextEditingController searchText = TextEditingController();

  Future<void> searchBooks() async {
    emit(SearchLoading());
    final response = await repo.searchBooks(name: searchText.text);
    response.fold((error) => emit(SearchFaileur(errorMessage: error)), (
      success,
    ) {
      emit(SearchSuccess(books: success));
    });
  }
}
