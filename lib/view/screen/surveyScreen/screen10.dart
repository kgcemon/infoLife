import 'package:edu_servey/view/widget/surveyBackgroundContainer.dart';
import 'package:flutter/material.dart';

class SurveyScreen10 extends StatelessWidget {
  const SurveyScreen10({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SurveyBackgroundContainer(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ফিডব্যাক"),
              SizedBox(
                height: 8,
              ),
              TextField(
                maxLines: 4,
                decoration: InputDecoration(
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

              SizedBox(height: 8,),
              Text("তথ্য প্রদানকারীর নিজ উদ্যোগে যদি সংশ্লিষ্ট  কোনো পরামর্শ দিতে চায়, সেটি লিখুন।",style: TextStyle(color: Color(0xff005BAA)),)
            ],
          ),
        ))
      ],
    );
  }
}
