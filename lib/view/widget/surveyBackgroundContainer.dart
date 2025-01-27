import 'package:flutter/material.dart';

class SurveyBackgroundContainer extends StatelessWidget {

   final Widget child;
   const SurveyBackgroundContainer({super.key,required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(7)),
          color: Color(0xffEFF7FF)),
      child: child,
    );
  }
}
