import 'package:edu_servey/view/widget/surveyBackgroundContainer.dart';
import 'package:flutter/material.dart';

Widget progressible(double persen){
  return SurveyBackgroundContainer(
    child: Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('অগ্রগতি',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            Text('৩-১৭', style: TextStyle(fontSize: 20)),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: persen,
          backgroundColor: Colors.grey[300],
          valueColor:
          const AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
        const SizedBox(height: 5),
      ],
    ),
  );
}