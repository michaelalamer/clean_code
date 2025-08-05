import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:youcancode/core/provider/auth_state_provider.dart';
import 'package:youcancode/core/route/route_name.dart';
import 'package:youcancode/features/home/presentation/ui/home_screen.dart';
import 'package:youcancode/features/login/presentation/ui/login_screen.dart';
import 'package:youcancode/features/setting/presentation/ui/setting_screen.dart';
import 'package:youcancode/features/signup/presentation/ui/signup_screen.dart';

final goRouterProvider = Provider<GoRouter>((ref) {
  final authState = ref.watch(authStateProvider);

  return GoRouter(
    initialLocation: '/login',
    redirect: (context, state) {
      final isGoingToLogin = state.matchedLocation == '/login';
      if (authState) {
        if (isGoingToLogin) {
          return '/home';
        }
      }
      return null;
    },
    routes: [
      GoRoute(
        path: '/login',
        name: loginRoute,
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/signup',
        name: signupRoute,
        builder: (context, state) => const SignUpScreen(),
      ),
      GoRoute(
        path: '/home',
        name: homeRoute,
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'setting',
            name: settingRoute,
            builder: (context, state) => const SettingScreen(),
          ),
        ],
      ),
    ],
  );
});
