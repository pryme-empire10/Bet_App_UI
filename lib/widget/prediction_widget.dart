import 'package:flutter/material.dart';

import '../model/prediction_model.dart';

class ListViewWidget extends StatelessWidget {
  final int currentIndex;
  final List<PredictionModel> prediction;
  final void Function(int) onPredictionTap;

  const ListViewWidget({super.key, 
    required this.currentIndex,
    required this.prediction,
    required this.onPredictionTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: prediction.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final currentPrediction = prediction[index];
          return GestureDetector(
            onTap: () => onPredictionTap(index),
            child: Container(
              margin: const EdgeInsets.all(5),
              height: 100,
              width: 50,
              decoration: BoxDecoration(
                color: currentIndex == index ? Colors.white : Colors.grey,
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                border: Border.all(
                  color: Colors.blue.withOpacity(0.3),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      Text(
                        '4',
                        style: TextStyle(
                          color: currentIndex == index
                              ? Colors.black
                              : Colors.white,
                        ),
                      ),
                      const Text('Tips'),
                    ],
                  ),
                  Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(
                      child: Text(
                        currentPrediction.dateNumber.toString(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
