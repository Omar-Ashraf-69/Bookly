import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/search/presentation/views/widgets/search_view_appbar.dart';
import 'package:bookly/features/search/presentation/views/widgets/searched_book_details_widget.dart';
import 'package:bookly/features/search/presentation/views/widgets/you_can_also_like_listview_widget.dart';
import 'package:bookly/features/search/presentation/views/widgets/you_can_also_like_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SearchViewBody());
  }
}

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 14),
          SearchViewAppbarWidget(),
          SizedBox(height: 28),
          SearchedBookDetailsWidget(),
          SizedBox(height: 24),
          YouCanAlsoLikeSection(),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
