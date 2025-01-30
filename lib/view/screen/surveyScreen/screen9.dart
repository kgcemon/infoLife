import 'package:edu_servey/controller/surveyAllScreenController.dart';
import 'package:edu_servey/view/widget/surveyBackgroundContainer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SurveyScreen9 extends StatefulWidget {
  const SurveyScreen9({super.key});

  @override
  State<SurveyScreen9> createState() => _SurveyScreen9State();
}

class _SurveyScreen9State extends State<SurveyScreen9> {


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
              const Text("জেলা"),
              const SizedBox(
                height: 8,
              ),
              const TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "   খাগড়াছড়ি",
                    enabled: false,
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
              const SizedBox(
                height: 12,
              ),
              const Text("উপজেলা"),
              const SizedBox(
                height: 8,
              ),
              DropdownButtonFormField<String>(
                value: _allScreenController.upoZila.value.isNotEmpty ? _allScreenController.upoZila.value : null, // Ensure initial value is set or null if empty
                onSaved: (newValue) {
                  print(newValue);
                  _allScreenController.upoZila.value = newValue!;
                },
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "   উপজেলা নির্বাচন করুন",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.transparent),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                ),
                items: const [
                  DropdownMenuItem(
                    value: "খাগড়াছড়ি সদর",
                    child: Text("খাগড়াছড়ি সদর"),
                  ),
                  DropdownMenuItem(
                    value: "দিঘীনালা",
                    child: Text("দিঘীনালা"),
                  ),
                  DropdownMenuItem(
                    value: "লক্ষ্মীছড়ি",
                    child: Text("লক্ষ্মীছড়ি"),
                  ),
                  DropdownMenuItem(
                    value: "মহালছড়ি",
                    child: Text("মহালছড়ি"),
                  ),
                  DropdownMenuItem(
                    value: "মানিকছড়ি",
                    child: Text("মানিকছড়ি"),
                  ),
                  DropdownMenuItem(
                    value: "মাটিরাঙ্গা",
                    child: Text("মাটিরাঙ্গা"),
                  ),
                  DropdownMenuItem(
                    value: "গুইমারা",
                    child: Text("গুইমারা"),
                  ),
                  DropdownMenuItem(
                    value: "রামগড়",
                    child: Text("রামগড়"),
                  ),
                ],
                onChanged: (value) {
                  // Handle the selected value
                  print("Selected Upazila: $value");
                  _allScreenController.upoZila.value = value!;
                },
                hint: const Text("   উপজেলা নির্বাচন করুন"),
              ),

              const SizedBox(
                height: 8,
              ),
              const Text("ইউনিয়ন/পৌরসভা"),
              const SizedBox(
                height: 8,
              ),
               TextField(
                controller: _allScreenController.unionController,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "   ইউনিয়ন/পৌরসভা",
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
            ],
          ),
        ))
      ],
    );
  }
}
