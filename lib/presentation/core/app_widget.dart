import 'package:chatgpt/presentation/common_widget/route_constant.dart';
import 'package:chatgpt/presentation/routes/routers.dart';
import 'package:flutter/material.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ChatGPT",
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstants.initialRoute,
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
