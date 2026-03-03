import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BasicTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final double ? height;
  const BasicTextButton({required this.onPressed, required this.title, this.height, super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        minimumSize: Size.fromHeight(height?? 80.h),
        foregroundColor: Colors.white
      ),
      child: Text(title, style: TextStyle(fontSize: 20.h, fontWeight: FontWeight.bold),));
  }
}