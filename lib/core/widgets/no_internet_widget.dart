import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class NoInternetWidget extends StatelessWidget {
  const NoInternetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              FittedBox(
                fit: BoxFit.cover,
                child: Text(
                  'Can\'t connect .. check internet',
                  style: AppStyles.montserratBold20.copyWith(
                    color: kPrimaryColor,
                  ),
                ),
              ),
              SizedBox(height: 12),
              Image.asset(Assets.imagesNoInternet),
            ],
          ),
        ),
      ),
    );
  }
}
