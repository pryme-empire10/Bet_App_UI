import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  AppTextStyles._(this.isActive);

  bool isActive;

  static TextStyle kAppBarTextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AppColors.kPrimaryColor,
  );

  static TextStyle kHeaderTitle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColors.kWhiteColor,
  );

  static TextStyle kText1TextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 15,
    color: AppColors.kWhiteColor
  );

  static TextStyle kText2TextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.kWhiteColor
  );

  static TextStyle kText3TextStyle = TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: AppColors.kBlackColor
  );

  static TextStyle kTipsNumberTextStyle({required bool isActive}){
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 15,
      fontWeight: FontWeight.w600,
      color: isActive ? AppColors.kBlackColor : AppColors.kWhiteColor,
    );
  }

  static TextStyle kTipsTextStyle({required bool isActive}) {
    return TextStyle(
      fontFamily: 'Montserrat',
      fontSize: 15,
      color: isActive ? AppColors.kBlackColor : AppColors.kWhiteColor,
    );
  }
}
