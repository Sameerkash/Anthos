import 'views/auth/auth.dart';
import 'views/auth/create_account.dart';
import 'views/auth/import_account.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'views/app.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: 'Anthos',
      );

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const AppView(),
        ),
        // routes: [],
      ),
      GoRoute(
        path: '/import',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const ImportAccount(),
        ),
      ),
      GoRoute(
        path: '/create',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const CreateAccount(),
        ),
      ),
      GoRoute(
        path: '/auth',
        pageBuilder: (context, state) => MaterialPage<void>(
          key: state.pageKey,
          child: const AuthScreen(),
        ),
      ),
    ],
    errorPageBuilder: (context, state) => MaterialPage<void>(
      key: state.pageKey,
      child: Container(),
    ),
  );
}
