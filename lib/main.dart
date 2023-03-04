import 'package:chatgpt/injection.dart';
import 'package:chatgpt/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';

void main() {
  configureDependencies();
  runApp(const AppWidget());
}
