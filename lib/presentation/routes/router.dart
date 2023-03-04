import 'package:chatgpt/presentation/page/chat/chat_page.dart';
import 'package:chatgpt/presentation/page/landing/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  final router = GoRouter(
    initialLocation: "/",
    routes: [
      GoRoute(
        name: "/",
        path: '/',
        builder: (context, state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        name: "chat",
        path: '/chat',
        builder: (context, state) {
          return const ChatPage();
        },
      ),
    ],
  );
}
