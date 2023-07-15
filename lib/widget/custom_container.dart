import 'package:betapp/consts/colors.dart';
import 'package:betapp/consts/text_styles.dart';
import 'package:flutter/material.dart';

import '../consts/sizedbox.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    super.key,
    required this.text1,
    required this.text2,
    required this.text3,
  });

  final String text1, text2, text3;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                color: AppColors.kPrimaryColor,
              ),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                buildSizedBox(10, 0),
                Text(
                  text1,
                  style: AppTextStyles.kText1TextStyle,
                ),
                const VerticalDivider(
                  color: Colors.white,
                  thickness: 2,
                  width: 2,
                ),
                buildSizedBox(5, 0),
                SizedBox(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Row(
                        children: [
                          buildSizedBox(0, 5),
                          const Icon(
                            Icons.sports_soccer_rounded,
                            color: Colors.white,
                          ),
                          buildSizedBox(0, 5),
                          const VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                            width: 2,
                          ),
                        ],
                      ),
                      Text(
                        text2,
                        style: AppTextStyles.kText2TextStyle,
                      ),
                      Row(
                        children: [
                          const VerticalDivider(
                            color: Colors.white,
                            thickness: 1,
                            width: 2,
                          ),
                          buildSizedBox(0, 5),
                          CircleAvatar(
                            backgroundColor: AppColors.kCheckColor,
                            minRadius: 15,
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                           buildSizedBox(0, 5),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            top: 90,
            left: 75,
            child: Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    text3,
                    style: const TextStyle(color: Colors.black),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
