import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppStyles {
  final montserratSemiBold14 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 14.sp,
    fontFamily: kMontserrat,
  );
  final montserratSemiBold18 = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 18.sp,
    fontFamily: kMontserrat,
  );
  final montserratMedium14 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    fontFamily: kMontserrat,
  );
  final montserratMedium16 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    fontFamily: kMontserrat,
  );
  final montserratMedium18 = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 18.sp,
    fontFamily: kMontserrat,
  );
  final montserratRegular14 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 14.sp,
    fontFamily: kMontserrat,
  );
  final interRegular30 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 30.sp,
    fontFamily: GoogleFonts.inter().fontFamily,
  );
  final interRegular16 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    fontFamily: GoogleFonts.inter().fontFamily,
  );
  final interRegular20 = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16.sp,
    fontFamily: GoogleFonts.inter().fontFamily,
  );
}
