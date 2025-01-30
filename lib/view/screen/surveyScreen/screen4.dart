import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/screen3controller.dart';
import '../../../controller/screen4controller.dart';
import '../../../controller/surveyAllScreenController.dart';
import '../../widget/customButton.dart';
import '../../widget/surveyBackgroundContainer.dart';

class SurveyScreen4 extends StatefulWidget {
  const SurveyScreen4({super.key});

  @override
  State<SurveyScreen4> createState() => _SurveyScreen4State();
}

class _SurveyScreen4State extends State<SurveyScreen4> {
  final SurveyAllScreenController _allScreenController =
      Get.find<SurveyAllScreenController>();


  final Screen4Controller screen4controller =
  Get.find<Screen4Controller>();


  @override
  void initState() {
    screen4controller.activeIndex.value = 0;
    screen4controller.activeIndex2.value = 10;
    super.initState();
  }

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
                    'আপনি কী মনে করেন, আপনার সন্তানেরা আধুনিক শিক্ষা থেকে পিছেয়ে আছে?',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),
                Obx(
                  () => Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          isSelectedButton: screen4controller.activeIndex.value == 1,
                          colorCode: 0xffDEEFFF,
                          btnName: 'হ্যাঁ',
                          onPressed: () {
                            screen4controller.indexChanger(1);
                            _allScreenController.Q6.value = 'হ্যাঁ';
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                          isSelectedButton: screen4controller.activeIndex.value == 2,
                          colorCode: 0xffFFE1E1,
                          btnName: 'না',
                          onPressed: () {
                            screen4controller.indexChanger(2);
                            _allScreenController.Q6.value = 'না';
                          },
                        ),
                      ),
                    ],
                  ),
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
                        offset: const Offset(0, 2)),
                  ],
                ),
                child: const Text(
                  'আপনি কি তাদের ইংরেজি, কম্পিউটার এবং প্রোগ্রামিং এর মতো আধুনিক শিক্ষায় ছোট থেকে দক্ষ হিসেবে গড়ে তুলতে চান?',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              const SizedBox(height: 16),
               Obx( () => Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          isSelectedButton: screen4controller.activeIndex2.value == 1,
                          colorCode: 0xffDEEFFF,
                          btnName: 'হ্যাঁ',
                          onPressed: () {
                            screen4controller.indexChanger2(1);
                            _allScreenController.Q7.value = 'হ্যাঁ';
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                          isSelectedButton: screen4controller.activeIndex2.value == 2,
                          colorCode: 0xffFFE1E1,
                          btnName: 'না',
                          onPressed: () {
                            screen4controller.indexChanger2(2);
                            _allScreenController.Q7.value = 'না';
                          },
                        ),
                      ),
                    ],
                  ),
               ),
            ],
          ),
        )),
      ],
    );
  }
}
