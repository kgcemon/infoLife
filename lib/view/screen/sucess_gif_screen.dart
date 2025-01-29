import 'package:edu_servey/view/screen/dashboard.dart';
import 'package:edu_servey/view/screen/main_survey_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../controller/surveyAllScreenController.dart';
import '../widget/surveyBackgroundContainer.dart';

class SucessGifScreen extends StatefulWidget {
  const SucessGifScreen({super.key});

  @override
  State<SucessGifScreen> createState() => _SucessGifScreenState();
}

class _SucessGifScreenState extends State<SucessGifScreen> {
  bool loadings = false;

  SurveyAllScreenController controller = SurveyAllScreenController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    loading();
  }

  void loading() {
    Future.delayed(const Duration(seconds: 2), () {
      loadings = true;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: SvgPicture.asset("assets/logo.svg"),
      ),
      body: Center(
        child: loadings == false
            ? Image.asset(
                "assets/done.gif",
                height: 130,
              )
            : Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SurveyBackgroundContainer(
                        child: Column(
                          children: [
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('অগ্রগতি',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Text('১৭-১৭', style: TextStyle(fontSize: 20)),
                              ],
                            ),
                            const SizedBox(height: 8),
                            LinearProgressIndicator(
                              value: 10,
                              backgroundColor: Colors.grey[300],
                              valueColor: const AlwaysStoppedAnimation<Color>(
                                  Colors.blue),
                            ),
                            const SizedBox(height: 5),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Spacer(),
                      Center(child: SvgPicture.asset("assets/Group.svg")),
                      const SizedBox(height: 10),
                      const Center(
                          child: Text(
                        "তথ্য প্রদানে সহায়তা করার জন্য ধন্যবাদ দিন",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w500),
                      )),
                      const Spacer(),
                      // Next Button
                      Row(
                        children: [
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed:() {
                                  controller.activeIndex.value = 0;

                                  Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(builder: (context) => const Dashboard()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  backgroundColor: const Color(0xffEFEFEF),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.home,
                                      color: Colors.black,
                                    ),
                                    Text(' হোম ',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.black)),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  controller.activeIndex.value = 0;
                                  Get.offAll(()=>const MainSurveyScreen());
                                },
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8)),
                                  padding:
                                      const EdgeInsets.symmetric(vertical: 16),
                                  backgroundColor: const Color(0xff0074D3),
                                ),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.list_alt,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    Text('${" নতুন ফরম"} ',
                                        style: TextStyle(
                                            fontSize: 16, color: Colors.white)),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
    );
  }
}
