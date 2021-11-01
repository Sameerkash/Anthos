import 'auth.vm.dart';

import '../../provider/provider.dart';
import '../../widgets/buttons.dart';
import '../../widgets/display.text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:go_router/go_router.dart';

class ImportAccount extends HookWidget {
  const ImportAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = useProvider(authProvider);
    final authNotifier = useProvider(authProvider.notifier);

    final noData = auth.maybeMap(noData: (data) => data, orElse: () => null);

    var mnemonicController = useTextEditingController();

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
                  text: 'Import Account with Mnemonic',
                  fontSize: 24,
                  color: Colors.white,
                ),
                if (noData != null) ...[
                  Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            TextField(
                              controller: mnemonicController,
                              maxLines: 5,
                              cursorHeight: 25,
                              textAlign: TextAlign.justify,
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                label: DisplayText(
                                  text: 'Your Secret Mnemonic',
                                ),
                                labelStyle: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const SizedBox(height: 10),
                  ElevatedDisplayTextButton(
                    text: 'Next',
                    // isLoading: noData.isLoading,
                    enabled: !noData.isLoading,
                    onPressed: () async {
                      if (mnemonicController.text.isNotEmpty) {
                        await authNotifier.importAccount(
                          mnemonic: mnemonicController.text,
                        );
                      }
                    },
                    color: Colors.white,
                    textColor: Colors.black,
                  ),
                  if (noData.isLoading)
                    const SizedBox(
                      height: 50,
                      width: 50,
                      child: CircularProgressIndicator(),
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
