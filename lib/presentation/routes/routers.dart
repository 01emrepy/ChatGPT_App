import 'package:chatgpt/presentation/common_widget/route_constant.dart';
import 'package:chatgpt/presentation/page/chat/chat_screen.dart';
import 'package:chatgpt/presentation/page/landing/splash_screen.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteConstants.home:
        return MaterialPageRoute(
          builder: (context) => const ChatScreen(),
        );
      case RouteConstants.initialRoute:
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );

      default:
        return MaterialPageRoute(builder: (context) => Container());
    }
  }
}
