import 'package:chatgpt/infrastructure/common/route_constant.dart';
import 'package:chatgpt/ui/chat_screen.dart';
import 'package:chatgpt/ui/splash_screen.dart';
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
