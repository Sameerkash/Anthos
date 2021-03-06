import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';

import '../../widgets/buttons.dart';
import '../../widgets/display.text.dart';

class AuthScreen extends HookWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.indigo[400]!,
            Colors.indigo,
            Colors.indigo[800]!,
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const DisplayText(
                text: 'Anthos',
                color: Colors.white,
                fontSize: 50,
                fontWeight: FontWeight.w600,
              ),
              const DisplayText(
                text: 'Secure Tezos Wallet',
                color: Colors.white,
              ),
              const SizedBox(
                height: 40,
              ),
              Image.asset(
                'assets/Logo.png',
                height: 260,
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedDisplayTextButton(
                text: 'New Account',
                onPressed: () {
                    context.go('/create');
              
                },
                color: Colors.white,
                textColor: Colors.black,
              ),
              const DisplayText(
                text: 'Have an acount?',
                color: Colors.white,
              ),
              ElevatedDisplayTextButton(
                text: 'Import Account',
                onPressed: () {
                  context.go('/import');
                  // Navigator.push(
                  //   context,
                  //   CupertinoPageRoute(
                  //     builder: (_) => const ImportAccount(),
                  //   ),
                  // );
                },
                color: Colors.white,
                textColor: Colors.black,
              )
            ],
          ),
        ),
      ),
    );
  }
}
