import 'package:chatgpt/presentation/common_widget/route_constant.dart';
import 'package:chatgpt/presentation/core/app_widget.dart';
import 'package:chatgpt/presentation/routes/routers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: AppWidget()));
}
