import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'package:todo_application_1/screen/splash_screen.dart';

import '../Drawer/bug.dart';
import '../Drawer/contact.dart';
import '../Drawer/faq.dart';
import '../Drawer/legal.dart';
import '../screen/home_page.dart';
import '../screen/login_page.dart';
import '../model/user.dart';

final routerProvider = Provider<GoRouter>((ref) {
  final router = RouterNotifier(ref);

  return GoRouter(
    urlPathStrategy: UrlPathStrategy.path,
    debugLogDiagnostics: true,
    refreshListenable: router,
    redirect: router._redirectLogic,
    routes: router._routes,
  );
});

class RouterNotifier extends ChangeNotifier {
  final Ref _ref;

  RouterNotifier(this._ref) {
    _ref.listen<User?>(
      userProvider,
      (_, __) => notifyListeners(),
    );
  }
  String? _redirectLogic(GoRouterState state) {
    final user = _ref.read(userProvider);

    final areWeLoggingIn = state.location == '/login';

    if (user == null) {
      return areWeLoggingIn ? null : '/login';
    }
    if (areWeLoggingIn) return '/splash';
    return null;
  }

  List<GoRoute> get _routes => [
        GoRoute(
          path: '/splash',
          builder: (context, _) => const SplashScreen(),
        ),
        GoRoute(
          path: '/login',
          builder: (context, _) => LoginPage(),
        ),
        GoRoute(
          name: "home",
          path: '/',
          builder: (context, state) => const HomePage(),
        ),
        GoRoute(
          name: "faq",
          path: '/faq',
          builder: (context, state) => const Faq(),
        ),
        GoRoute(
          name: "legal",
          path: '/legal',
          builder: (context, state) => const Legal(),
        ),
        GoRoute(
          name: "contact us",
          path: '/contact',
          builder: (context, state) => const Contact(),
        ),
        GoRoute(
          name: "bug",
          path: '/bug',
          builder: (context, state) => const Bug(),
        ),
      ];
}
