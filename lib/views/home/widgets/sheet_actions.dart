import 'package:animations/animations.dart';
import 'package:anthos/views/operation/recieve_operation.dart';
import 'package:anthos/views/operation/scan_qr_code.dart';
import 'package:anthos/views/operation/send_operation.dart';
import 'package:flutter/cupertino.dart';

import '../../../widgets/buttons.dart';
import 'package:flutter/material.dart';

class SheetActions extends StatelessWidget {
  const SheetActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TransactionActionButton(
                  text: 'Send',
                  icon: Icons.send,
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (_) => const SendOpertation(),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 20),
                TransactionActionButton(
                  text: 'Receive',
                  icon: Icons.download_rounded,
                  onPressed: () {
                    Navigator.push(
                      context,
                      CupertinoPageRoute(
                        builder: (_) => const ReceiveOperation(),
                      ),
                    );
                  },
                ),
                const SizedBox(width: 30),
                QRCodeButton(
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   CupertinoPageRoute(
                    //     builder: (_) => const ScanQRCode(),
                    //   ),
                    // );
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
