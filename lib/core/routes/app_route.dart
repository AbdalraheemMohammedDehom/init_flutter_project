import 'package:go_router/go_router.dart';
import 'names_route.dart';

class AppRoute {
  AppRoute._();

  static final GoRouter router = GoRouter(
    initialLocation: NamesRoute.loginPath,

    routes: [
      // GoRoute(
      //   name: NamesRoute.login,
      //   path: NamesRoute.loginPath,
      //   builder: (context, state) => const LoginView(),
      // ),
      // GoRoute(
      //   name: NamesRoute.home,
      //   path: NamesRoute.homePath,
      //   builder: (context, state) => const HomeView(),
      // ),
    ],
  );
}
