import 'package:chatgpt/application/chatgpt_text/chatgpt_text_cubit.dart';
import 'package:chatgpt/injection.dart';
import 'package:chatgpt/presentation/common_widget/route_constant.dart';
import 'package:chatgpt/presentation/routes/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final appRouter = getIt<AppRouter>();
    return BlocProvider(
      create: (context) => ChatgptTextCubit(),
      child: MaterialApp.router(
        routerConfig: appRouter.router,
        title: "ChatGPT",
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
