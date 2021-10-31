import 'package:anthos/provider/provider.dart';
import 'package:anthos/views/auth/auth.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'home/home.dart';
import 'package:flutter/material.dart';

class AppView extends HookWidget {
  const AppView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = useProvider(authProvider);

    return Scaffold(
      backgroundColor: Colors.indigo,
      body: auth.maybeMap(
        authenticated: (_) => const HomeView(),
        loading: (_) => const Center(
          child: CircularProgressIndicator(
            color: Colors.indigo,
          ),
        ),
        orElse: () => const AuthScreen(),
      ),
    );
  }
}
