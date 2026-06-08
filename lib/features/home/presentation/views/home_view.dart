import 'package:bookly/core/utils/app_routers.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    // return HomeViewBody();
    return HomeViewBody();
  }
}

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
            Padding(
              padding: const EdgeInsets.only(right: 40),
              child: Row(
                children: [
                  Image.asset(Assets.imagesLogo, width: 100.w),
                  Spacer(),
                  IconButton(
                    padding: EdgeInsets.zero,

                    onPressed: () {},
                    icon: FaIcon(FontAwesomeIcons.magnifyingGlass),
                  ),
                ],
              ),
            ),

            SizedBox(height: 16.h),
            SizedBox(
              height: MediaQuery.of(context).size.height / 3,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouters.kSearchView);
                    },
                    child: Container(
                      padding: EdgeInsets.only(right: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadiusGeometry.circular(24),
                        child: Image.asset(
                          Assets.imagesCover,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 24.h),
            Text("Best Seller", style: AppStyles.montserratSemiBold18),
            SizedBox(height: 24.h),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(right: 48),
                child: ListView.builder(
                  itemCount: 12,
                  padding: EdgeInsets.zero,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Image.asset(
                              Assets.imagesCover,
                              width: 80.w,
                              // width: MediaQuery.of(context).size.width / 3,
                            ),
                            SizedBox(width: 18),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Harry Potter and the Goblet of Fire",
                                    style: AppStyles.interRegular20,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  Text(
                                    "J.K. Rowling",
                                    style: AppStyles.montserratMedium14
                                        .copyWith(
                                          color: Colors.white.withOpacity(0.7),
                                        ),
                                  ),
                                  Row(
                                    children: [
                                      Text(
                                        "19.99\$",
                                        style: AppStyles.montserratBold20,
                                      ),
                                      Spacer(),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                            size: 18.w,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            "4,8",
                                            style: AppStyles.montserratMedium16,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            "(4321)",
                                            style:
                                                AppStyles.montserratRegular14,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
