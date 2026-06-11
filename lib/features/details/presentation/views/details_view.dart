import 'package:bookly/features/home/data/models/book_model.dart';

import 'widgets/details_view_appbar.dart';
import 'widgets/book_details_widget.dart';
import 'widgets/you_can_also_like_section.dart';
import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: DetailsViewBody(book: book,));
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
          BookDetailsWidget(book: book,),
          SizedBox(height: 20),
          YouCanAlsoLikeSection(),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
