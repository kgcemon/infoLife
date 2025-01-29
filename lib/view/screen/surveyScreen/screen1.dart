import 'package:edu_servey/controller/surveyAllScreenController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/customButton.dart';
import '../../widget/surveyBackgroundContainer.dart';


class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final SurveyAllScreenController allScreenController = Get.put(SurveyAllScreenController());

  List howManyStudents = ["এক", "দুই", "তিন", "চার +"];

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Column(
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
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: const Text(
                      'আপনার কী নার্সারি থেকে দশম শ্রেণিতে পড়ে এমন ছেলে-মেয়ে আছে?',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                          isSelectedButton:
                          allScreenController.hasStudentsFromNurseryToTenthGradeSelected.value == 1
                              ? true
                              : false,
                          colorCode: 0xffDEEFFF,
                          btnName: 'হ্যাঁ',
                          onPressed: () {
                            allScreenController.Q1.value = "হ্যাঁ";
                            allScreenController.hasStudentsFromNurseryToTenthGradeSelector(1);
                          },
                        ),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                          isSelectedButton:
                          allScreenController.hasStudentsFromNurseryToTenthGradeSelected.value == 2
                              ? true
                              : false,
                          colorCode: 0xffFFE1E1,
                          btnName: 'না',
                          onPressed: () {
                            allScreenController.Q1.value = "না";
                            allScreenController.hasStudentsFromNurseryToTenthGradeSelector(2);
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          allScreenController.hasStudentsFromNurseryToTenthGradeSelected.value == 1
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
                      'থাকলে, কতজন আছে?',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  const SizedBox(height: 16),
                  GridView.builder(
                    shrinkWrap: true,
                    itemCount: 4,
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: 50,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => Obx(
                          () => CustomButton(
                        isSelectedButton:
                        allScreenController.howManyHasStudentsFromNurseryToTenthGradeSelected.value == index,
                        colorCode: 0xffDEEFFF,
                        btnName: howManyStudents[index].toString(),
                        onPressed: () {
                          allScreenController.Q2.value = howManyStudents[index];
                          allScreenController.howManyHasStudentsFromNurseryToTenthGradeSelector(index);
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
              : const SizedBox(),
        ],
      ),
    );
  }
}



