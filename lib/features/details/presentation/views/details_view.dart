import 'package:bookly/features/details/presentation/cubit/similar_books_cubit_cubit.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/details_view_appbar.dart';
import 'widgets/book_details_widget.dart';
import 'widgets/you_can_also_like_section.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatefulWidget {
  const DetailsView({super.key, required this.book});
  final BookModel book;

  @override
  State<DetailsView> createState() => _DetailsViewState();
}

class _DetailsViewState extends State<DetailsView> {
  @override
  @override
  void initState() {
    super.initState();
    context.read<SimilarBooksCubit>().getSimilarBooks(widget.book.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: DetailsViewBody(book: widget.book));
  }
}

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 14),
          DetailsViewAppbarWidget(),
          SizedBox(height: 28),
          BookDetailsWidget(book: book),
          SizedBox(height: 20),
          YouCanAlsoLikeSection(),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
