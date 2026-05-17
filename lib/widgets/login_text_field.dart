import 'dart:html';

import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class LoginTextField extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;

  const LoginTextField({
    super.key,
    required this.icon,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 42,
      decoration: BoxDecoration(
          color: AppColors.inputColor, borderRadius: BorderRadius.circular(14)),
      child: TextField(
        obscureText: obscureText,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 15,
        ),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.only(top: 11),
          prefixIcon: Icon(
            icon,
            color: AppColors.greyText,
            size: 24,
          ),
          suffixIcon: suffixIcon,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: AppColors.greyText,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            letterSpacing: .4,
          ),
        ),
      ),
    );
  }
}
