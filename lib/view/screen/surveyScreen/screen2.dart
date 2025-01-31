import 'package:edu_servey/view/widget/customButton.dart';
import 'package:edu_servey/view/widget/surveyBackgroundContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/surveyAllScreenController.dart';

class SurveyScreen2 extends StatefulWidget {
  const SurveyScreen2({super.key});

  @override
  State<SurveyScreen2> createState() => _SurveyScreen2State();
}

class _SurveyScreen2State extends State<SurveyScreen2> {
  final SurveyAllScreenController _allScreenController = Get.find<SurveyAllScreenController>();

  @override
  void initState() {
    super.initState();
  }

  List subjectList1 = [
    'প্রাক-প্রাথমিক',
    'প্রথম',
    'দ্বিতীয়',
    'তৃতীয়',
    'চতুর্থ',
    'পঞ্চম',
  ];
  List subjectList2 = [
    'ষষ্ঠ',
    'সপ্তম',
    'অষ্টম',
    'নবম',
    'নবম',
    'দশম',
  ];


  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SurveyBackgroundContainer(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("১. শিক্ষার্থীর নাম"),
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
                      decoration:  InputDecoration(
                          hintText: "শিক্ষার্থীর নাম",
                          hintStyle: TextStyle(color: Colors.grey.shade400),
                          border: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          contentPadding:  const EdgeInsets.symmetric(vertical: 0,horizontal: 10)),
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
                              _allScreenController.Q3.value = 'প্রাথমিক';
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
                              _allScreenController.Q3.value = 'মাধ্যমিক';
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
          const SizedBox(height: 16),
          Obx(() =>  _allScreenController.Q3.value == 'প্রাথমিক' ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: subjectList1.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 50,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2),
              itemBuilder: (context, index) =>Obx(
                () => CustomButton(
                  isSelectedButton: _allScreenController.activeIndex2.value == index,
                  colorCode: 0xffDEEFFF,
                  btnName: subjectList1[index],
                  onPressed: () {
                    _allScreenController.indexChanger2(index);
                    _allScreenController.QQ3.value = subjectList1[index];
                  },
                ),
              ),
            ),
          ) : const SizedBox(),),
          Obx(() =>  _allScreenController.Q3.value == 'মাধ্যমিক' ? Padding(
            padding: const EdgeInsets.all(8.0),
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: subjectList2.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 50,
                  mainAxisSpacing: 15,
                  crossAxisSpacing: 15,
                  crossAxisCount: 2),
              itemBuilder: (context, index) =>Obx( () => CustomButton(
                  isSelectedButton: _allScreenController.activeIndex3.value == index,
                  colorCode: 0xffDEEFFF,
                  btnName: subjectList2[index],
                  onPressed: () {
                    _allScreenController.indexChanger3(index);
                    _allScreenController.QQ3.value = subjectList2[index];
                  },
                ),
              ),
            ),
          ) : const SizedBox(),)
        ],
      ),
    );
  }
}
