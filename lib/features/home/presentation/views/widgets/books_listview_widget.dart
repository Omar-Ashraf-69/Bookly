import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/features/home/presentation/cubit/cubit/book_cubit.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/utils/app_routers.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BooksListViewWidget extends StatelessWidget {
  const BooksListViewWidget({super.key});

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
        return SizedBox(
          height: MediaQuery.of(context).size.height / 3,
          child: ListView.builder(
            itemCount: cubit.books!.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRouters.kDetailsView ,   extra: cubit.books![index],
);
                },
                child: AspectRatio(
                  aspectRatio: 3 / 4,
                  child: Container(
                    padding: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(24),
                      child: FancyShimmerImage(
                        boxFit: BoxFit.cover,
                        boxDecoration: BoxDecoration(
                          borderRadius: BorderRadiusGeometry.circular(24),
                        ),
                        imageUrl: cubit.books![index].image ?? "",
                        errorWidget: Image.asset(
                          Assets.imagesCover, // safest option
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    // : CachedNetworkImage(
                    //     imageUrl: cubit.books![index].image!,
                    //     placeholder: (context, url) =>
                    //         CircularProgressIndicator(),
                    //     errorWidget: (context, url, error) =>
                    //         Icon(Icons.error),
                    //   ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
