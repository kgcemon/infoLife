import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../controller/screen7controller.dart';
import '../../../controller/surveyAllScreenController.dart';
import '../../widget/customButton.dart';
import '../../widget/surveyBackgroundContainer.dart';

class SurveyScreen7 extends StatefulWidget {
  const SurveyScreen7({super.key});

  @override
  State<SurveyScreen7> createState() => _SurveyScreen7State();
}

class _SurveyScreen7State extends State<SurveyScreen7> {

  final SurveyAllScreenController _allScreenController =
  Get.find<SurveyAllScreenController>();

  Screen7Controller screen7controller = Screen7Controller();

  @override
  void initState() {
    screen7controller.activeIndex.value = 0;
    screen7controller.activeIndex2.value = 10;
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
          child: Image.asset("assets/Frame.png"),
        ),
        const SizedBox(
          height: 15,
        ),
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
                    'খাগড়াছড়িতে আধুনিক শিক্ষায় এডুলাইফ আইটি ইনস্টিটিউট এর কার্যক্রম এবং অবদান সম্পর্কে অভিভাকদের বলুন।',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                const SizedBox(height: 16),
                Obx( () => Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                            isSelectedButton: screen7controller.activeIndex.value == 1,
                            colorCode: 0xffDEEFFF,
                            btnName: 'বলেছি', onPressed: () {
                          screen7controller.indexChanger(1);
                          _allScreenController.Q11.value = 'বলেছি';
                        },),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child:
                            CustomButton(
                              isSelectedButton: screen7controller.activeIndex.value == 2,
                              colorCode: 0xffFFE1E1, btnName: 'বলিনি', onPressed: () {
                              screen7controller.indexChanger(2);
                              _allScreenController.Q11.value = 'বলিনি';
                            },),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
