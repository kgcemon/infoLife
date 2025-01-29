import 'package:edu_servey/controller/surveyAllScreenController.dart';
import 'package:edu_servey/view/widget/surveyBackgroundContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurveyScreen10 extends StatefulWidget {
  const SurveyScreen10({super.key});

  @override
  State<SurveyScreen10> createState() => _SurveyScreen10State();
}

class _SurveyScreen10State extends State<SurveyScreen10> {


  final SurveyAllScreenController _allScreenController =
  Get.find<SurveyAllScreenController>();

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
              const Text("ফিডব্যাক"),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: _allScreenController.pidbackController,
                maxLines: 4,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "",
                    disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent),
                    ),
                    contentPadding: EdgeInsets.all(0)),
              ),

              const SizedBox(height: 8,),
              const Text("তথ্য প্রদানকারীর নিজ উদ্যোগে যদি সংশ্লিষ্ট  কোনো পরামর্শ দিতে চায়, সেটি লিখুন।",style: TextStyle(color: Color(0xff005BAA)),),
            ],
          ),
        ))
      ],
    );
  }
}
