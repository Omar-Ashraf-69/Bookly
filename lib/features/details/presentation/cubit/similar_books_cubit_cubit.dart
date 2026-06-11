import 'package:bloc/bloc.dart';
import 'package:bookly/features/details/data/models/similar_book_model.dart';
import 'package:bookly/features/details/data/repos/similar_books_repo.dart';

part 'similar_books_cubit_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit({required this.repo}) : super(SimilarBooksInitial());
  final SimilarBooksRepo repo;

  Future<void> getSimilarBooks(int id) async {
    emit(SimilarBooksLoading());
    final response = await repo.getSimilarBooks(id: id);
    response.fold((error) => emit(SimilarBooksFaileur(errorMessage: error)), (
      success,
    ) {
      emit(SimilarBooksSuccess(similarBooks: success));
    });
  }
}
