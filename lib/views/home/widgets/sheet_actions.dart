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
                  onPressed: () {},
                ),
                const SizedBox(width: 20),
                TransactionActionButton(
                  text: 'Recieve',
                  icon: Icons.download_rounded,
                  onPressed: () {},
                ),
                const SizedBox(width: 30),
                const QRCodeButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
