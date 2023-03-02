import 'package:chatgpt/infrastructure/common/route_constant.dart';
import 'package:chatgpt/ui/image_constant.dart';
import 'package:chatgpt/ui/text.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacementNamed(context, RouteConstants.home);
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
