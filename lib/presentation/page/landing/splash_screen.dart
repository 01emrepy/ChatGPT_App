import 'package:chatgpt/presentation/common_widget/route_constant.dart';
import 'package:chatgpt/presentation/common_widget/image_constant.dart';
import 'package:chatgpt/presentation/common_widget/custom_text.dart';
import 'package:chatgpt/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      context.go(context.namedLocation("chat"));
    });
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImageConstants.ai,
          height: 150,
          width: 150,
        ),
        const SizedBox(height: 16),
        const AppText(
          title: "Intelligence",
          fontSize: 20,
          titleColor: Color(0xffF2F2F9),
          fontWeight: FontWeight.w600,
        )
      ],
    );
  }
}
