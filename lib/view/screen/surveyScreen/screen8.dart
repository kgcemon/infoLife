import 'package:edu_servey/view/widget/customButton.dart';
import 'package:edu_servey/view/widget/surveyBackgroundContainer.dart';
import 'package:flutter/material.dart';

class SurveyScreen8 extends StatelessWidget {
  const SurveyScreen8({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SurveyBackgroundContainer(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
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
                    child: const TextField(
                      decoration: InputDecoration(
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
                   Row(
                    children: [
                      Expanded(
                        child: CustomButton(
                            isSelectedButton: true,
                            colorCode: 0xffDEEFFF,
                            btnName: 'পিতা', onPressed: () {  },),
                      ),
                      const SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                            colorCode: 0xffDEEFFF, btnName: 'মাতা', onPressed: () {  },),
                      ),
                      SizedBox(width: 16),
                      Expanded(
                        child: CustomButton(
                            colorCode: 0xffDEEFFF, btnName: 'অন্যান্য', onPressed: () {  },),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),

        const SizedBox(height: 20),

        const SurveyBackgroundContainer(child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

            Text("মোবাইল নম্বর"),
              SizedBox(
                height: 12,
              ),
             TextField(
              decoration: InputDecoration(
                filled: true,
                  fillColor: Colors.white,
                  hintText: "   নাম",
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.transparent)),
                  contentPadding: EdgeInsets.all(0)),
            ),
              SizedBox(
                height: 12,
              ),
              Text("বিকল্প মোবাইল নম্বর"),
              SizedBox(
                height: 12,
              ),
             TextField(
              decoration: InputDecoration(
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
    );
  }
}
