import 'package:edu_servey/view/widget/customButton.dart';
import 'package:edu_servey/view/widget/surveyBackgroundContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/surveyAllScreenController.dart';
import '../../../controller/surveyScreen1Controller.dart';

class SurveyScreen2 extends StatefulWidget {
  const SurveyScreen2({super.key});

  @override
  State<SurveyScreen2> createState() => _SurveyScreen2State();
}

class _SurveyScreen2State extends State<SurveyScreen2> {
  final SurveyAllScreenController _allScreenController =
      SurveyAllScreenController();

  @override
  void initState() {
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Obx( () => Text("১. শিক্ষার্থীর নাম ${Get.find<SurveyScreen1Controller>().Q1.value}")),
                const SizedBox(
                  height: 12,
                ),
                Container(
                  padding: const EdgeInsets.all(5),
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
                  child: TextField(
                    controller: _allScreenController.studentsNameController,
                    decoration: const InputDecoration(
                        hintText: "   শিক্ষার্থীর নাম",
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.transparent)),
                        contentPadding: EdgeInsets.all(0)),
                  ),
                ),
                const SizedBox(height: 12),
                const Text("কোন স্তরে পড়ে?"),
                const SizedBox(
                  height: 12,
                ),
                Obx(
                  () => Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          isSelectedButton:
                              _allScreenController.whoIsReadSelected.value == 1,
                          colorCode: 0xffDEEFFF,
                          btnName: 'প্রাথমিক',
                          onPressed: () {
                            _allScreenController.whoIsReadSelector(1);
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                          isSelectedButton:
                              _allScreenController.whoIsReadSelected.value == 2,
                          colorCode: 0xffDEEFFF,
                          btnName: 'মাধ্যমিক',
                          onPressed: () {
                            print(_allScreenController.Q1.value);
                            _allScreenController.whoIsReadSelector(2);
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
      ],
    );
  }
}
