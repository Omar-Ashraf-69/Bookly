
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

class PriceTextWidget extends StatelessWidget {
  const PriceTextWidget({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Text(
      "${(book.id % 100).toString()}\$",
      style: AppStyles.montserratBold20,
    );
  }
}

class ReviewsTextWidget extends StatelessWidget {
  const ReviewsTextWidget({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Text(
      ("(${book.id.toString().substring(0, 3)})"),
      overflow: TextOverflow.ellipsis,
      style: AppStyles.montserratRegular14,
    );
  }
}

class RatingTextWidget extends StatelessWidget {
  const RatingTextWidget({
    super.key,
    required this.book,
  });

  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return Text(
      ((book.rating?.average ?? 0) * 10).toStringAsFixed(
        1,
      ),
      style: AppStyles.montserratMedium16,
    );
  }
}
