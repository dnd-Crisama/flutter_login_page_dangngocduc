import 'dart:html';

import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});
  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  double _scale = 1;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        setState(() {
          _scale = 0.96;
        });
      },
      onTapUp: (_) {
        setState(() {
          _scale = 1;
        });
      },
      onTapCancel: () {
        setState(() {
          _scale = 1;
        });
      },
      child: AnimatedScale(
        scale: _scale,
        duration: const Duration(milliseconds: 120),
        child: Container(
          width: 215,
          height: 50,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: AppColors.buttonColor,
            borderRadius: BorderRadius.circular(14),
          ),
          child: const Text(
            'Login',
            style: TextStyle(
              color: Colors.white,
              fontSize: 19,
              fontWeight: FontWeight.w700,
              letterSpacing: 1,
            ),
          ),
        ),
      ),
    );
  }
}
