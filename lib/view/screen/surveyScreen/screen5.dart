import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/screen5controller.dart';
import '../../../controller/surveyAllScreenController.dart';
import '../../widget/customButton.dart';
import '../../widget/surveyBackgroundContainer.dart';

class SurveyScreen5 extends StatefulWidget {
  const SurveyScreen5({super.key});

  @override
  State<SurveyScreen5> createState() => _SurveyScreen5State();
}

class _SurveyScreen5State extends State<SurveyScreen5> {

  final SurveyAllScreenController _allScreenController =
  Get.find<SurveyAllScreenController>();

  Screen5Controller screen5controller = Screen5Controller();


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
                    'আপনার এলাকায় যদি এমন আধুনিক শিক্ষার সুযোগ তৈরি হয়, আপনার সন্তানকে ভর্তি করাবেন?',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),
                 Obx(
                   () => Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                            isSelectedButton: screen5controller.activeIndex.value == 1 ? true : false,
                            colorCode: 0xffDEEFFF,
                            btnName: 'হ্যাঁ', onPressed: () {
                          screen5controller.indexChanger(1);
                          _allScreenController.Q8.value = 'হ্যাঁ';
                        },),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                          isSelectedButton: screen5controller.activeIndex.value == 2 ? true : false,
                            colorCode: 0xffFFE1E1, btnName: 'না', onPressed: () {
                          screen5controller.indexChanger(2);
                          _allScreenController.Q8.value = 'না';
                        },),
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
                      'আপনি কি এডুলাইফ আইটি ইনস্টিটিউট সম্পর্কে জানেন?',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 16),
                   Obx(() => Row(
                     children: [
                       Expanded(
                         child: CustomButton(
                           isSelectedButton: screen5controller.activeIndex2.value == 1,
                           colorCode: 0xffDEEFFF,
                           btnName: 'হ্যাঁ', onPressed: () {
                           screen5controller.indexChanger2(1);
                           _allScreenController.Q9.value = 'হ্যাঁ';
                         },),
                       ),
                       const SizedBox(width: 16),
                       Expanded(
                         child: CustomButton(
                           isSelectedButton: screen5controller.activeIndex2.value == 2,
                           colorCode: 0xffFFE1E1, btnName: 'না', onPressed: () {
                           screen5controller.indexChanger2(2);
                           _allScreenController.Q9.value = 'না';
                         },),
                       ),
                     ],
                   ),)
                ],
              ),
            )),
      ],
    );
  }
}
