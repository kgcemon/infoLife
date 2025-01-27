import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final int colorCode;
  final String btnName;
  final bool isSelectedButton;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.colorCode,
    required this.btnName,
    required this.onPressed,
    this.isSelectedButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: 2,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: isSelectedButton ? const Color(0xff2DACFF) : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        backgroundColor: Color(colorCode),
      ),
      child: FittedBox(
        child: Text(
          btnName,
          style: const TextStyle(color: Colors.black),
        ),
      ),
    );
  }
}
