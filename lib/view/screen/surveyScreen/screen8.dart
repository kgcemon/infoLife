import 'package:edu_servey/controller/screen8controller.dart';
import 'package:edu_servey/controller/surveyAllScreenController.dart';
import 'package:edu_servey/view/widget/customButton.dart';
import 'package:edu_servey/view/widget/surveyBackgroundContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurveyScreen8 extends StatefulWidget {
  const SurveyScreen8({super.key});

  @override
  State<SurveyScreen8> createState() => _SurveyScreen8State();
}

class _SurveyScreen8State extends State<SurveyScreen8> {


  final SurveyAllScreenController _allScreenController =
  Get.find<SurveyAllScreenController>();

  Screen8Controller screen8controller = Screen8Controller();
  
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
                  const Text("তথ্য প্রদানকারীর নাম"),
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
                    child:  TextField(
                      controller: _allScreenController.yourNameController,
                      decoration: const InputDecoration(
                          hintText: "   নাম",
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.transparent)),
                          contentPadding: EdgeInsets.all(0)),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                 Obx(() =>   Row(
                   children: [
                     Expanded(
                       child: CustomButton(
                         isSelectedButton: screen8controller.activeIndex.value == 1,
                         colorCode: 0xffDEEFFF,
                         btnName: 'পিতা', onPressed: () {
                         screen8controller.indexChanger(1);
                         _allScreenController.Q12.value = 'পিতা';
                       },),
                     ),
                     const SizedBox(width: 16),
                     Expanded(
                       child: CustomButton(
                         isSelectedButton:  screen8controller.activeIndex.value == 2,
                         colorCode: 0xffDEEFFF, btnName: 'মাতা', onPressed: () {
                         screen8controller.indexChanger(2);
                         _allScreenController.Q12.value = 'মাতা';
                       },),
                     ),
                     const SizedBox(width: 16),
                     Expanded(
                       child: CustomButton(
                         isSelectedButton:  screen8controller.activeIndex.value == 3,
                         colorCode: 0xffDEEFFF, btnName: 'অন্যান্য', onPressed: () {
                         screen8controller.indexChanger(3);
                         _allScreenController.Q12.value = 'অন্যান্য';
                       },),
                     ),
                   ],
                 ),)
                ],
              ),
            ),
          ),
      
          const SizedBox(height: 20),
      
           SurveyBackgroundContainer(child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              const Text("মোবাইল নম্বর"),
                const SizedBox(
                  height: 12,
                ),
               TextField(
                 controller: _allScreenController.mobileNumber,
                decoration: const InputDecoration(
                  filled: true,
                    fillColor: Colors.white,
                    hintText: "   মোবাইল নম্বর",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    contentPadding: EdgeInsets.all(0)),
              ),
                const SizedBox(
                  height: 12,
                ),
                const Text("বিকল্প মোবাইল নম্বর"),
                const SizedBox(
                  height: 12,
                ),
               TextField(
                 controller: _allScreenController.othersPhoneNumber,
                decoration: const InputDecoration(
                  filled: true,
                    fillColor: Colors.white,
                    hintText: "   মোবাইল নম্বর",
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent)),
                    contentPadding: EdgeInsets.all(0)),
              ),
            ],),
          ))
        ],
      ),
    );
  }
}
