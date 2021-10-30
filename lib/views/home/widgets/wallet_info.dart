import '../../../widgets/display.text.dart';
import 'package:flutter/material.dart';

class WalletInfo extends StatelessWidget {
  const WalletInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const[
          DisplayText(
            text: 'Wallet Balance',
            fontSize: 26,
            color: Colors.white,
          ),
          SizedBox(height: 50),
          DisplayText(
            text: '1 XTZ',
            fontSize: 24,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          DisplayText(
            text: ' 1 x 10\u{2076} mutez',
            fontSize: 16,
            color: Colors.white,
          ),
          SizedBox(height: 5),
          DisplayText(
            text: '\$ 34',
            fontSize: 20,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
