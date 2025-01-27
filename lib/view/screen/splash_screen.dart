import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeIn,
      ),
    );
    _controller.forward();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            begin: Alignment(-1.22, -1.0),
            end: Alignment(1.22, 1.0),
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
            ],
            stops: [
              -0.1987,
              -0.1319,
              -0.0651,
              0.0017,
              0.0684,
              0.1352,
              0.202,
              0.2688,
              0.3356,
              0.4024,
              0.4692,
              0.536,
              0.6028,
              0.6696,
              0.7364,
              0.8031,
            ],
          ),
        ),
        child: Center(
          child: AnimatedBuilder(
            animation: _fadeAnimation,
            builder: (context, child) {
              return Opacity(
                opacity: _fadeAnimation.value,
                child: SvgPicture.asset(
                  "assets/edulogo.svg",
                  height: screenHeight * 0.2,
                  width: screenWidth * 0.3,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
