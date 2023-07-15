import 'package:betapp/consts/colors.dart';
import 'package:betapp/consts/text_strings.dart';
import 'package:betapp/consts/text_styles.dart';
import 'package:betapp/model/prediction_model.dart';
import 'package:flutter/material.dart';

class CustomColumn extends StatelessWidget {
  const CustomColumn({
    super.key,
    required this.predictionModel,
    this.isActive = false,
  });

  final PredictionModel predictionModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(
              predictionModel.tips.toString(),
              style: AppTextStyles.kTipsNumberTextStyle(isActive: isActive),
            ),
            Text(
              AppStrings.kTipsText,
              style: AppTextStyles.kTipsTextStyle(isActive: isActive),
            ),
          ],
        ),
        Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
            color: AppColors.kPrimaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Center(
            child: Text(
              predictionModel.dateNumber.toString(),
            ),
          ),
        ),
      ],
    );
  }
}
