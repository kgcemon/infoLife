import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'main_survey_screen.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(412, 917));

    List btnList = [
      {
        "icon": const Icon(Icons.list_alt_sharp,size: 48,color: Colors.blue,),
        "name": "নতুন ফরম"
      },
      {
        "icon": const Icon(Icons.calendar_month,size: 48,color: Colors.blue,),
        "name": "আজকের সংগ্রহ"
      },
      {
        "icon": const Icon(Icons.list,size: 48,color: Colors.blue,),
        "name": "সব ফরম"
      },
      {
        "icon": const Icon(Icons.send,size: 48,color: Colors.blue,),
        "name": "তথ্য পাঠান"
      },
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SizedBox(
          height: 85.h,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: BottomNavigationBar(
              onTap: (value) {
                if(value==2){
                  Get.defaultDialog(
                    contentPadding: const EdgeInsets.only(bottom: 25,right: 20,left: 20),
                    backgroundColor: const Color(0xffEFF7FF),
                    title: "",
                    titlePadding: const EdgeInsets.all(0),
                    content: const Center(child: Text("আপনি কি অ্যাপ থেকে বের হতে চাচ্ছেন?",style: TextStyle(fontSize: 19),textAlign: TextAlign.center,)),
                      cancel: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        minimumSize: const Size(100, 46),
                          backgroundColor: const Color(0xffDEEFFF)),
                        onPressed: () {

                    },
                        child: const Text("হ্যাঁ")),
                    confirm: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                            minimumSize: const Size(100, 46),
                            backgroundColor: const Color(0xffFFE1E1)),
                        onPressed: () {
                          Get.back();
                        },
                        child: const Text("না")),
                  );
                }
                if(value==1){
                  Get.to(()=>const MainSurveyScreen());
                }
              },
              selectedLabelStyle: const TextStyle(color: Colors.white),
              unselectedItemColor: Colors.white,
              unselectedFontSize: 16,
              fixedColor: Colors.white,
              backgroundColor: const Color(0xff0073D2),
                items: [
              BottomNavigationBarItem(icon: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.home,color: Colors.white,size: 24.h,),
              ),label: "হোম"),
              BottomNavigationBarItem(icon: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.add,color: Colors.white,size: 24.h,),
              ),label: "নতুন ফরম"),
              BottomNavigationBarItem(icon: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.login,color: Colors.white,size: 24.h,),
              ),label: "বাহির"),
            ]),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(-2.12, -1.0),
              end: Alignment(2.12, 1.0),
              colors: [
                Color(0xFF76C9FF),
                Color(0xFF95D5FF),
                Color(0xFFAFDFFF),
                Color(0xFFC3E7FF),
                Color(0xFFD4EEFF),
                Color(0xFFE0F3FF),
                Color(0xFFEAF7FF),
                Color(0xFFF1FAFF),
                Color(0xFFF6FCFF),
                Color(0xFFFAFDFF),
                Color(0xFFFCFEFF),
                Color(0xFFFEFEFF),
                Color(0xFFFEFFFF),
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
                Color(0xFFFFFFFF),
              ],
              stops: [
                -0.1663,
                -0.1035,
                -0.0407,
                0.0221,
                0.0849,
                0.1477,
                0.2105,
                0.2733,
                0.3361,
                0.3988,
                0.4616,
                0.5244,
                0.5872,
                0.65,
                0.7128,
                0.7756,
                0.8384,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Center(child: SvgPicture.asset("assets/logo.svg",height: 60,)),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 87,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xffEFF7FF),
                  boxShadow: [
                  BoxShadow(
                    color: Color(0x001C3326),
                    offset: Offset(0, 2),
                    blurRadius: 5.0,
                  ),
                ],),
                child: const Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: CircleAvatar(
                          maxRadius: 50,
                          backgroundImage: NetworkImage(
                              "https://marketplace.canva.com/EAFuJ5pCLLM/1/0/1600w/canva-black-and-gold-simple-business-man-linkedin-profile-picture-BM_NPo97JwE.jpg")),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "তোফাজ্জল হোসেন রাসেল",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xff04294D),
                              fontSize: 19),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(Icons.manage_accounts,size: 13,),
                            Text(
                              " ব্রাঞ্চ ম্যানেজার",
                              style: TextStyle(color: Color(0xff04294D),fontSize: 12),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Icon(Icons.location_on,size: 13,),
                            Text(
                              " লক্ষ্মীছড়ি শাখা",
                              style: TextStyle(color: Color(0xff04294D),fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              GridView.builder(
                itemCount: 4,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisExtent: 130,
                    crossAxisCount: 2),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: () {
                      if(index==0){
                        Get.to(()=>const MainSurveyScreen());
                      }
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Color(0x001C3326),
                              offset: Offset(0, 2),
                              blurRadius: 5.0,
                            ),
                          ],
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                          color: Color(0xffEFF7FF)),
                      child:   Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          btnList[index]['icon'],
                          const SizedBox(height: 3,),

                           Text(btnList[index]['name'],style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBdCfGvo10yh3NPNFW_vFxfkaWVAnG0PYiLw&s")
            ],
          ),
        ),
      ),
    );
  }
}
