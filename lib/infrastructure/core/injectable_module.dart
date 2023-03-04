import 'package:chatgpt/application/chatgpt_text/chatgpt_text_cubit.dart';
import 'package:chatgpt/domain/i_api_service.dart';
import 'package:chatgpt/infrastructure/api_service.dart';
import 'package:chatgpt/presentation/routes/router.dart';
import 'package:injectable/injectable.dart';

@module
abstract class InjectableModule {
  @singleton
  AppRouter get router => AppRouter();
}
