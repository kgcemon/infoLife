import 'package:edu_servey/view/screen/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
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
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: screenHeight * 0.1), // Add spacing for better layout
              SvgPicture.asset(
                "assets/edulogo.svg",
                height: screenHeight * 0.162,
                width: screenWidth * 0.132,
              ),
              const SizedBox(height: 5),
              const Text(
                "এডুলাইফ সার্ভেতে স্বাগতম",
                style: TextStyle(fontSize: 22),
              ),
              const SizedBox(height: 20),
              const Text(
                "লগ ইন",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 33),
              ),
              const SizedBox(height: 20),
              Container(
                width: screenWidth * 0.820,
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFDEEFFF),
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(0x1A000000),
                      offset: Offset(0, 2),
                      blurRadius: 5.0,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "ইউজার আইডি",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "edulife@",
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "পাসওয়ার্ড",
                      style: TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 5),
                    const TextField(
                      decoration: InputDecoration(
                        hintText: "1234",
                        hintStyle: TextStyle(color: Color(0xffB3B3B3)),
                        contentPadding: EdgeInsets.symmetric(horizontal: 10),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(8)),
                          borderSide: BorderSide.none,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size(double.infinity, 50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                        backgroundColor: const Color(0xff005CAB),
                      ),
                      onPressed: () => Get.offAll(()=>const Dashboard()),
                      child: const Text(
                        "লগ ইন",
                        style: TextStyle(color: Colors.white, fontSize: 18,),
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Center(
                      child: Text(
                        "সমস্যা? কল করুন।",
                        style: TextStyle(color: Color(0xff757575)),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: screenHeight * 0.1), // Add spacing for better layout
            ],
          ),
        ),
      ),
    );
  }
}
