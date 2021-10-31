import 'package:anthos/provider/provider.dart';
import 'package:anthos/widgets/display.text.dart';
import 'package:flutter/material.dart';

import 'package:anthos/models/account/account.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:qr_flutter/qr_flutter.dart';

class ReceiveOperation extends HookWidget {
  const ReceiveOperation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final home = useProvider(homeProvider);

    final account =
        home.maybeMap(data: (data) => data.userAccount, orElse: () => null);
    if (account == null) {
      return const Scaffold(
        body: Center(
          child: Text('Something went wrong'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Receive XTZ'),
        backgroundColor: Colors.indigo,
        centerTitle: true,
        leading: const SizedBox.expand(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const DisplayText(
              text: 'Scan The Code Below',
              fontSize: 24,
              fontWeight: FontWeight.w500,
              color: Colors.indigo,
            ),
            const SizedBox(height: 16),
            QrImage(
              data: "1234567890",
              version: QrVersions.auto,
              size: 200.0,
            ),
            const SizedBox(height: 30),
            const DisplayText(
              text: 'Or tap to copy',
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.indigo,
            ),
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                Clipboard.setData(ClipboardData(text: account.address));
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: const Text('Address copied to clipboard!'),
                    duration: const Duration(seconds: 2),
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                );
              },
              child: DisplayText(
                text: account.address,
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
