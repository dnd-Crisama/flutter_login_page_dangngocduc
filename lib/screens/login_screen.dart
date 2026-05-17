import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_login_page/core/app_colors.dart';
import '../widgets/login_text_field.dart';
import '../widgets/login_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 800));
    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppColors.topGradient,
              AppColors.bottomGradient,
            ],
          ),
        ),
        child: SafeArea(
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                Container(
                  width: double.infinity,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  padding: const EdgeInsets.fromLTRB(45, 70, 45, 42),
                  decoration: BoxDecoration(
                    color: AppColors.cardColor.withValues(alpha: .8),
                    borderRadius: BorderRadius.circular(5),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: .2),
                        blurRadius: 12,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: Column(children: [
                    Image.asset(
                      'images/icon.jpg',
                      width: 135,
                      height: 115,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(height: 28),
                    const Text(
                      "Please sign in to continue",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.whiteText,
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        letterSpacing: 1.7,
                      ),
                    ),
                    const SizedBox(
                      height: 36,
                    ),
                    const LoginTextField(
                      icon: Icons.mail_lock_outlined,
                      hintText: "Email",
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    const LoginTextField(
                      icon: Icons.lock_outline,
                      hintText: 'Password',
                      obscureText: true,
                      suffixIcon: Icon(
                        Icons.visibility_off_outlined,
                        color: AppColors.greyText,
                        size: 24,
                      ),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 18,
                ),
                const LoginButton(),
                const SizedBox(height: 18),
                const Text(
                  "Can't login?",
                  style: TextStyle(
                    color: AppColors.whiteText,
                    fontSize: 17,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 1.7,
                  ),
                ),
                const SizedBox(height: 18),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Don't have an account? ",
                      style: TextStyle(
                        color: AppColors.greyText,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1.3,
                      ),
                    ),
                    Text(
                      "Sign up",
                      style: TextStyle(
                        color: AppColors.whiteText,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 1.3,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
