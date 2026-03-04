import 'package:flutter/material.dart';
import 'package:soundz_music_app/core/configs/themes/app_theme.dart';


class BasicTextField extends StatelessWidget {
  final String label;
  const BasicTextField({required this.label, super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.transparent,
        contentPadding: EdgeInsets.all(24),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(32)
        ),
        label: Text(label, style: AppTheme.captionLight,)
      ),
    );
  }
}