import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/customButton.dart';
import '../../widget/surveyBackgroundContainer.dart';

class SurveyScreen6 extends StatelessWidget {
  const SurveyScreen6({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        SurveyBackgroundContainer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                          offset: const Offset(0, 2)),
                    ],
                  ),
                  child: const Text(
                    'তথ্য প্রযুক্তি, ছোটদের প্রোগ্রামিং, স্পোকেন ইংলিশ এবং স্মার্ট প্যারেন্টিং বিষয়ে যদি কোনো সেমিনার হয়, আপনি কি অংশগ্রহণ করবেন?',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),
                 Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                          isSelectedButton: true,
                          colorCode: 0xffDEEFFF,
                          btnName: 'হ্যাঁ', onPressed: () {  },),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: CustomButton(
                          colorCode: 0xffEFF7FF, btnName: 'চেষ্টা করব', onPressed: () {  },),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: CustomButton(
                          colorCode: 0xffFFE1E1, btnName: 'না', onPressed: () {  },),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),

      ],
    );
  }
}
