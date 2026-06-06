import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/auth/presentation/cubit/auth_cubit.dart';
import '../../features/auth/presentation/screens/login_screen.dart';
import '../../features/auth/presentation/screens/splash_screen.dart';
import '../../features/profile/presentation/screens/home_screen.dart';
import '../../features/profile/presentation/screens/profile_screen.dart';
import '../l10n/app_strings.dart';

class AppRoutes {
  static const splash   = '/';
  static const login    = '/login';
  static const home     = '/home';
  static const profile  = '/profile';
}

/// Notifies [GoRouter] when [AuthCubit] state changes (e.g. logout → login redirect).
class AuthRouterRefresh extends ChangeNotifier {
  AuthRouterRefresh(AuthCubit authCubit) {
    _subscription = authCubit.stream.listen((_) => notifyListeners());
  }

  late final StreamSubscription<AuthState> _subscription;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}

GoRouter createAppRouter(AuthCubit authCubit, Listenable refreshListenable) {
  return GoRouter(
    initialLocation: AppRoutes.splash,
    refreshListenable: refreshListenable,
    redirect: (context, state) {
      final authState = authCubit.state;
      final isLoggedIn  = authState is AuthAuthenticated;
      final isLoggingIn = state.matchedLocation == AppRoutes.login;
      final isSplash    = state.matchedLocation == AppRoutes.splash;

      if (isSplash) return null;
      if (!isLoggedIn && !isLoggingIn) return AppRoutes.login;
      if (isLoggedIn && isLoggingIn) return AppRoutes.home;
      return null;
    },
    routes: [
      GoRoute(path: AppRoutes.splash,  builder: (_, __) => const SplashScreen()),
      GoRoute(path: AppRoutes.login,   builder: (_, __) => const LoginScreen()),
      GoRoute(path: AppRoutes.home,    builder: (_, __) => const HomeScreen()),
      GoRoute(path: AppRoutes.profile, builder: (_, __) => const ProfileScreen()),
    ],
    errorBuilder: (_, state) => Scaffold(
      body: Center(
        child: Text(AppStrings.t.routeNotFound(state.uri.toString())),
      ),
    ),
  );
}
