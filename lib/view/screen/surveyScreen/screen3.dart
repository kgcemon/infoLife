import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/customButton.dart';
import '../../widget/surveyBackgroundContainer.dart';

class SurveyScreen3 extends StatelessWidget {
  const SurveyScreen3({super.key});

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
                    'তারা কী প্রাইভেট শিক্ষকের কাছে পড়ে?',
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
                          colorCode: 0xffFFE1E1, btnName: 'না', onPressed: () {  },),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        // Question Section 1
        const SizedBox(height: 20),
        // Question Section 2
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
                            offset: Offset(0, 2)),
                      ],
                    ),
                    child: const Text(
                      'পড়লে, কোন বিষয়ে পড়ে?',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 50,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) =>  CustomButton(
                        isSelectedButton: index == 1,
                        colorCode: 0xffDEEFFF, btnName: "ইংরেজি", onPressed: () {  },),
                  )
                ],
              ),
            )),
      ],
    );
  }
}
