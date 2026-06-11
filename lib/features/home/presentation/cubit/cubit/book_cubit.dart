import 'package:bloc/bloc.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:bookly/features/home/data/repos/home_repo.dart';

part 'book_state.dart';

class BookCubit extends Cubit<BookState> {
  final HomeRepo repo;

  BookCubit({required this.repo}) : super(BookInitial());
  List<BookModel>? books;
  void getBooks() async {
    emit(BookLoading());
    final response = await repo.getBooks();
    response.fold((error) => emit(BookFaileur(errorMessage: error)), (r) {
      books = r;
      emit(BookSuccess());
    });
  }
}
