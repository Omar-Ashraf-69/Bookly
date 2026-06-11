import 'package:bookly/core/widgets/best_seller_list_item.dart';
import 'package:bookly/features/home/presentation/cubit/cubit/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BestSellerListViewWidget extends StatelessWidget {
  const BestSellerListViewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookCubit, BookState>(
      builder: (context, state) {
        final cubit = context.read<BookCubit>();
        if (state is BookLoading) {
          return const Center(child: CircularProgressIndicator());
        }

        if (state is BookFaileur) {
          return Center(child: Text(state.errorMessage));
        }

        if (cubit.books == null) {
          return const SizedBox();
        }
        return Expanded(
          child: Padding(
            padding: const EdgeInsets.only(right: 48),
            child: ListView.builder(
              itemCount: cubit.books!.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return BestSellerListItemWidget(
                  book: cubit.books![index],
                );
              },
            ),
          ),
        );
      },
    );
  }
}
