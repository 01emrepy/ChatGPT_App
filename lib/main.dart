import 'package:chatgpt/infrastructure/common/route_constant.dart';
import 'package:chatgpt/infrastructure/common/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Intelligence",
      debugShowCheckedModeBanner: false,
      initialRoute: RouteConstants.initialRoute,
      onGenerateRoute: Routers.generateRoute,
    );
  }
}
