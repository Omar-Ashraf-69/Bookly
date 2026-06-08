
import '../../../../../core/utils/styles.dart';
import 'best_seller_listview_widget.dart';
import 'books_listview_widget.dart';
import 'home_view_customer_appbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 30, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 32.h),
            HomeViewCustomAppbarWidget(),
            SizedBox(height: 16.h),
            BooksListViewWidget(),
            SizedBox(height: 24.h),
            Text("Best Seller", style: AppStyles.montserratSemiBold18),
            SizedBox(height: 24.h),
            BestSellerListViewWidget(),
          ],
        ),
      ),
    );
  }
}
