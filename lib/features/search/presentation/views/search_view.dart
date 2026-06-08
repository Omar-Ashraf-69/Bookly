
import 'widgets/search_view_appbar.dart';
import 'widgets/searched_book_details_widget.dart';
import 'widgets/you_can_also_like_section.dart';
import 'package:flutter/material.dart';

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
