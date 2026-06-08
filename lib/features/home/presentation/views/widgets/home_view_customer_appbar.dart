
import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeViewCustomAppbarWidget extends StatelessWidget {
  const HomeViewCustomAppbarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}
