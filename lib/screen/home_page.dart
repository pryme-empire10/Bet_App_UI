import 'package:betapp/consts/colors.dart';
import 'package:betapp/consts/sizedbox.dart';
import 'package:betapp/consts/text_strings.dart';
import 'package:betapp/consts/text_styles.dart';
import 'package:flutter/material.dart';

import '../model/prediction.dart';
import '../widget/custom_column.dart';
import '../widget/custom_container.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.kBackgroundColor,
        elevation: 0.0,
        leading: Icon(
          Icons.arrow_back,
          color: AppColors.kPrimaryColor,
        ),
        title: Text(
          AppStrings.kAppBarText,
          style: AppTextStyles.kAppBarTextStyle,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.refresh,
              color: AppColors.kPrimaryColor,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildSizedBox(20, 0),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  AppStrings.kHeaderTitle,
                  style: AppTextStyles.kHeaderTitle,
                ),
              ),
              buildSizedBox(20, 0),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  itemCount: prediction.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final currentPrediction = prediction[index];
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                      child: Container(
                        margin: const EdgeInsets.all(5),
                        height: 100,
                        width: 50,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? AppColors.kWhiteColor
                              : AppColors.kBackgroundColor,
                          borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(15),
                            bottomLeft: Radius.circular(10),
                            bottomRight: Radius.circular(10),
                          ),
                          border: Border.all(
                            color: AppColors.kPrimaryColor.withOpacity(
                              0.3,
                            ),
                          ),
                        ),
                        child: CustomColumn(
                          predictionModel: currentPrediction,
                          isActive: currentIndex == index,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Text(
              'fromtrenches2riches@gmail.com',
              style: TextStyle(color: AppColors.kPrimaryColor),
            ),
          ),
          buildSizedBox(20, 0),
          const CustomContainer(
            text1: '23:15 England Premier League',
            text2: 'Chelsea  0 : 0  Liverpool',
            text3: 'Under 2.5 Goals  3.05',
          ),
          buildSizedBox(10, 0),
          const CustomContainer(
            text1: '23:15 England Premier League',
            text2: 'Aston Villa  0 : 5  Arsenal',
            text3: 'Away win  1.15',
          ),
           buildSizedBox(10, 0),
          const CustomContainer(
            text1: '23:15 England Premier League',
            text2: 'Newcastle United  1 : 1  Everton',
            text3: 'Under 2.5 Goals  2.10',
          )
        ],
      ),
    );
  }
}
