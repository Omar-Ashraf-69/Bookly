import 'package:bookly/features/details/presentation/cubit/similar_books_cubit_cubit.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder;

import '../../../../../core/utils/assets.dart';
import 'package:flutter/material.dart';

class YouCanAlsoLikeListViewWidget extends StatelessWidget {
  const YouCanAlsoLikeListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is SimilarBooksFaileur) {
          return Center(child: Text(state.errorMessage));
        }
        if (state is SimilarBooksSuccess) {
          final books = state.similarBooks;
          return Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 32),
              child: ListView.builder(
                itemCount: books.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: AspectRatio(
                      aspectRatio: 2 / 3,
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(20),
                        child: FancyShimmerImage(
                          imageUrl: books[index].image ?? "",
                          errorWidget: Image.asset(Assets.imagesCover),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          );
        }
        return const SizedBox();
      },
    );
  }
}
