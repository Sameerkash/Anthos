import 'package:flutter/material.dart';

import '../../../models/tezos/tezos.dart';

import '../../../models/account/account.dart';
import '../../../widgets/display.text.dart';

class WalletInfo extends StatelessWidget {
  final Account account;
  final Tezos? tezos;
  const WalletInfo({
    Key? key,
    required this.account,
    this.tezos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var userAccount =
        account.maybeMap(user: (user) => user, orElse: () => null);

    if (userAccount != null) {
      userAccount =
          userAccount.copyWith(balance: userAccount.balance ~/ 1000000);
    }

    return Container(
      alignment: Alignment.center,
      child: (userAccount == null)
          ? const DisplayText(
              text: 'Empty Account',
              color: Colors.white,
              fontSize: 18,
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const DisplayText(
                  text: 'Wallet Balance',
                  fontSize: 26,
                  color: Colors.white,
                ),
                const SizedBox(height: 50),
                DisplayText(
                  text: '${userAccount.balance} XTZ',
                  fontSize: 24,
                  color: Colors.white,
                ),
                const SizedBox(height: 5),
                DisplayText(
                  text: ' ${userAccount.balance} x 10\u{2076} mutez',
                  fontSize: 16,
                  color: Colors.white,
                ),
                const SizedBox(height: 5),
                if (tezos != null)
                  DisplayText(
                    text: '\$ ${tezos!.currentPrice * userAccount.balance}',
                    fontSize: 20,
                    color: Colors.white,
                  ),
              ],
            ),
    );
  }
}
