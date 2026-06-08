import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
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
          SizedBox(height: 32.h),
          Padding(
            padding: const EdgeInsets.only(left: 32, right: 32, top: 32),
            child: Row(
              children: [
                IconButton(
                  onPressed: () {
                    GoRouter.of(context).pop();
                  },
                  icon: FaIcon(FontAwesomeIcons.x),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: FaIcon(FontAwesomeIcons.cartShopping),
                ),
              ],
            ),
          ),
          SizedBox(height: 28),
          Image.asset(
            Assets.imagesCover,
            height: MediaQuery.of(context).size.height / 3,
            width: MediaQuery.of(context).size.height / 3,
          ),
          SizedBox(height: 32),
          Text("The Jungle Book", style: AppStyles.interRegular30),
          SizedBox(height: 4),
          Text("Rudyard Kipling", style: AppStyles.montserratMedium18),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star, color: Colors.amber),
              SizedBox(width: 4),
              Text("4.2"),
              SizedBox(width: 4),
              Text("(4212)"),
            ],
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45.h,
                    //              width: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(24),
                        topLeft: Radius.circular(24),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "19.9\$",
                        style: AppStyles.montserratSemiBold18.copyWith(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 45.h,
                    // width: MediaQuery.of(context).size.width/2,
                    decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(24),
                        topRight: Radius.circular(24),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Free Preview",
                        style: AppStyles.interRegular16,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Align(
              alignment: AlignmentGeometry.centerStart,
              child: Text(
                "You can also like",
                style: AppStyles.montserratSemiBold14,
              ),
            ),
          ),
          SizedBox(height: 12),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 32),
              child: ListView.builder(
                itemCount: 12,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 18),
                    child: Image.asset(Assets.imagesCover),
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 18),
        ],
      ),
    );
  }
}
