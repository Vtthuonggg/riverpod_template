import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_template/core/router/transition_helper.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/home/presentation/pages/home_page.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(
        path: LoginPage.path,
        pageBuilder: (context, state) =>
            TransitionHelper.fade(state, const LoginPage()),
      ),
      GoRoute(
        path: HomePage.path,
        pageBuilder: (context, state) =>
            TransitionHelper.fade(state, const HomePage()),
      ),
    ],
  );
});
