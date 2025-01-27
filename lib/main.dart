import 'package:edu_servey/bindings/bindings.dart';
import 'package:edu_servey/view/screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Transparent status bar
      statusBarIconBrightness: Brightness.dark, // Icons for light backgrounds
      statusBarBrightness: Brightness.light, // iOS status bar text color
    ),
  );
  runApp(ScreenUtilInit(
    designSize: const Size(420, 917),
    builder: (context, child) => const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return  ScreenUtilInit(
      designSize: const Size(412, 927),
      minTextAdapt: true,
      splitScreenMode: true,
      child: GetMaterialApp(
        initialBinding: BindingsAllController(),
        theme: ThemeData(
          textTheme: GoogleFonts.latoTextTheme(textTheme).copyWith(
            bodyMedium: GoogleFonts.notoSerifBengali(
              textStyle: textTheme.bodyMedium,
            ),
          ),
        ),
        home: const SplashScreen(),),
    );
  }
}

