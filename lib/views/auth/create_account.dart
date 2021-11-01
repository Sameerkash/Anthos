import '../../provider/provider.dart';
import '../../widgets/buttons.dart';
import '../../widgets/display.text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'auth.vm.dart';

class CreateAccount extends HookWidget {
  const CreateAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = useProvider(authProvider);
    final authNotifier = useProvider(authProvider.notifier);

    final data = auth.maybeMap(data: (data) => data, orElse: () => null);
    final noData = auth.maybeMap(noData: (data) => data, orElse: () => null);

    if (auth is Authenticated) {
      context.go('/');
    }

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
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const DisplayText(
                  text: 'Create A new Account',
                  fontSize: 24,
                  color: Colors.white,
                ),
                if (noData != null)
                  ElevatedDisplayTextButton(
                    text: 'Generate Account',
                    isLoading: noData.isLoading,
                    enabled: !noData.isLoading,
                    onPressed: () {
                      authNotifier.generateMnemonic();
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                if (data != null) ...[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          children: [
                            const DisplayText(
                              text: 'Your Secret Mnemonic',
                              fontSize: 20,
                            ),
                            const SizedBox(height: 4),
                            const DisplayText(
                              text: 'Tap to Copy',
                              fontSize: 10,
                            ),
                            const SizedBox(height: 20),
                            InkWell(
                              onTap: () {
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                    content: Text('Copied to Clipboard!'),
                                    duration: Duration(seconds: 2),
                                  ),
                                );
                              },
                              child: DisplayText(
                                text: data.mnemonic!,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const DisplayText(
                    text: '''Please confirm you have saved it safely.''',
                    fontSize: 14,
                    color: Colors.white60,
                  ),
                  const DisplayText(
                    text:
                        'you won\'t be able to recover your account if you lose it',
                    fontSize: 14,
                    color: Colors.white70,
                  ),
                  const SizedBox(height: 10),
                  ElevatedDisplayTextButton(
                    text: 'I Confirm',
                    onPressed: () async {
                      await authNotifier.getAccount();
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                  )
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
