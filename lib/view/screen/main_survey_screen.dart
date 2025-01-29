import 'package:edu_servey/controller/surveyAllScreenController.dart';
import 'package:edu_servey/view/screen/sucess_gif_screen.dart';
import 'package:edu_servey/view/screen/surveyScreen/screen1.dart';
import 'package:edu_servey/view/screen/surveyScreen/screen10.dart';
import 'package:edu_servey/view/screen/surveyScreen/screen3.dart';
import 'package:edu_servey/view/screen/surveyScreen/screen4.dart';
import 'package:edu_servey/view/screen/surveyScreen/screen5.dart';
import 'package:edu_servey/view/screen/surveyScreen/screen6.dart';
import 'package:edu_servey/view/screen/surveyScreen/screen7.dart';
import 'package:edu_servey/view/screen/surveyScreen/screen8.dart';
import 'package:edu_servey/view/screen/surveyScreen/screen9.dart';
import 'package:edu_servey/view/widget/progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'surveyScreen/screen2.dart';

class MainSurveyScreen extends StatefulWidget {
  const MainSurveyScreen({super.key});

  @override
  State<MainSurveyScreen> createState() => _MainSurveyScreenState();
}

class _MainSurveyScreenState extends State<MainSurveyScreen> {
  final List<Widget> allScreen = [
    const Screen1(),
    const SurveyScreen2(),
    const SurveyScreen3(),
    const SurveyScreen4(),
    const SurveyScreen5(),
    const SurveyScreen6(),
    const SurveyScreen7(),
    const SurveyScreen8(),
    const SurveyScreen9(),
    const SurveyScreen10(),
  ];

  final SurveyAllScreenController controller = Get.put(SurveyAllScreenController());


  @override
  void initState() {
    super.initState();
    load();

  }


  load()async{
    var data = await controller.getAllData();
    print(data);
  }



  @override
  Widget build(BuildContext context) {
    print(controller.Q1.value);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SvgPicture.asset("assets/logo.svg"),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
              () => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Progress bar
              progressible((controller.activeIndex.value + 1) / allScreen.length),
              const SizedBox(height: 20),

              // Current Screen
              Expanded(child: allScreen[controller.activeIndex.value]),

              // Navigation Buttons
              Row(
                children: [
                  if (controller.activeIndex.value > 0)
                    Expanded(child: _buildBackButton()),

                  if (controller.activeIndex.value > 0)
                    const SizedBox(width: 10),

                  Expanded(child: _buildNextButton()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton() {
    return ElevatedButton(
      onPressed: () {
        controller.changeScreen(controller.activeIndex.value - 1);
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: const Color(0xffEFEFEF),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_back, color: Colors.black),
          Text(' পিছনে ',
              style: TextStyle(fontSize: 16, color: Colors.black)),
        ],
      ),
    );
  }

  Widget _buildNextButton() {
    return ElevatedButton(
      onPressed: () {
        if (controller.activeIndex.value < allScreen.length - 1) {
          controller.changeScreen(controller.activeIndex.value + 1);
        } else {
          controller.activeIndex.value = 0;
          controller.saveData().then((value) =>  Get.offAll(() => const SucessGifScreen()),);
        }
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        padding: const EdgeInsets.symmetric(vertical: 16),
        backgroundColor: const Color(0xff0074D3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            controller.activeIndex.value == allScreen.length - 1
                ? "সংরক্ষণ"
                : "পরবর্তী",
            style: const TextStyle(fontSize: 16, color: Colors.white),
          ),
          Icon(
            controller.activeIndex.value == allScreen.length - 1
                ? Icons.save
                : Icons.arrow_forward,
            color: Colors.white,
            size: 20,
          )
        ],
      ),
    );
  }
}

