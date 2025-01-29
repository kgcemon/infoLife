import 'package:edu_servey/controller/screen3controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/surveyAllScreenController.dart';
import '../../widget/customButton.dart';
import '../../widget/surveyBackgroundContainer.dart';

class SurveyScreen3 extends StatefulWidget {
  const SurveyScreen3({super.key});

  @override
  State<SurveyScreen3> createState() => _SurveyScreen3State();
}

class _SurveyScreen3State extends State<SurveyScreen3> {
  final SurveyAllScreenController _allScreenController =
      Get.find<SurveyAllScreenController>();

  Screen3Controller screen3controller = Screen3Controller();

  List subjectList = [
    'ইংরেজি',
    'কম্পিউটার',
    'প্রোগ্রামিং',
    'অন্যান্য',
  ];

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
                Obx( () =>
                   Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          isSelectedButton: screen3controller.activeIndex.value == 1 ? true : false,
                          colorCode: 0xffDEEFFF,
                          btnName: 'হ্যাঁ',
                          onPressed: () {
                            screen3controller.indexChanger(1);
                            _allScreenController.Q4.value = 'হ্যাঁ';
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                          isSelectedButton: screen3controller.activeIndex.value == 2 ? true : false,
                          colorCode: 0xffFFE1E1,
                          btnName: 'না',
                          onPressed: () {
                            screen3controller.indexChanger(2);
                            _allScreenController.Q4.value = 'না';
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        // Question Section 1
        const SizedBox(height: 20),
        // Question Section 2
        Obx(
          () => _allScreenController.Q4.value == 'হ্যাঁ'
              ? SurveyBackgroundContainer(
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
                          'পড়লে, কোন বিষয়ে পড়ে?',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 16),
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: subjectList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 50,
                                mainAxisSpacing: 15,
                                crossAxisSpacing: 15,
                                crossAxisCount: 2),
                        itemBuilder: (context, index) => Obx(
                          () => CustomButton(
                            isSelectedButton: screen3controller.activeIndex2.value == index,
                            colorCode: 0xffDEEFFF,
                            btnName: subjectList[index],
                            onPressed: () {
                              screen3controller.indexChanger2(index);
                              _allScreenController.Q5.value = subjectList[index];
                            },
                          ),
                        ),
                      )
                    ],
                  ),
                ))
              : const SizedBox(),
        ),
      ],
    );
  }
}
