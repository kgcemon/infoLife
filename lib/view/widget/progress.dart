import 'package:edu_servey/view/widget/surveyBackgroundContainer.dart';
import 'package:flutter/material.dart';

Widget progressible(double amount) {
  return SurveyBackgroundContainer(
    child: Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('অগ্রগতি',
                style: TextStyle(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            Text('${increaseMarker(amount)}', style: const TextStyle(fontSize: 20)),
          ],
        ),
        const SizedBox(height: 8),
        LinearProgressIndicator(
          value: amount,
          backgroundColor: Colors.grey[300],
          valueColor: const AlwaysStoppedAnimation<Color>(Colors.blue),
        ),
        const SizedBox(height: 5),
      ],
    ),
  );
}

String increaseMarker(double amount) {
  // Use a tolerance value to compare floating-point numbers
  const double tolerance = 0.001;

  if (amount == 0.1) {
    return '৩-১৭';
  } else if ((amount - 0.2).abs() < tolerance) {
    return '৪-১৭';
  } else if ((amount - 0.3).abs() < tolerance) {
    return '৪-১৭';
  } else if ((amount - 0.4).abs() < tolerance) {
    return '৬-১৭';
  }else if ((amount - 0.5).abs() < tolerance) {
    return '৭-১৭';
  }else if ((amount - 0.6).abs() < tolerance) {
    return '৮-১৭';
  }else if ((amount - 0.7).abs() < tolerance) {
    return '১০-১৭';
  }else if ((amount - 0.8).abs() < tolerance) {
    return '১১-১৭';
  }else if ((amount - 0.9).abs() < tolerance) {
    return '১৫-১৭';
  }else if ((amount - 1.0).abs() < tolerance) {
    return '১৭-১৭';
  }

  // Default return if no conditions match
  return 'Unknown Progress';
}
