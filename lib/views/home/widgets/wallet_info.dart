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
    var userAccount = account.maybeMap(
        user: (user) => user, empty: (data) => data, orElse: () => null);

    late var u;
    if (userAccount is UserAccount) {
      u = userAccount.copyWith(balance: userAccount.balance / 1000000.0);
    } else if (userAccount is EmptyAccount) {
      u = userAccount.copyWith(balance: userAccount.balance ?? 0 / 1000000.0);
    } else {
      u = null;
    }

    return Container(
      alignment: Alignment.center,
      child: (u == null)
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
                const SizedBox(height: 40),
                DisplayText(
                  text: '${u.balance} XTZ',
                  fontSize: 24,
                  color: Colors.white,
                ),
                const SizedBox(height: 5),
                DisplayText(
                  text: ' ${u.balance} x 10\u{2076} mutez',
                  fontSize: 16,
                  color: Colors.white,
                ),
                const SizedBox(height: 5),
                if (tezos != null)
                  DisplayText(
                    text: '\$ ${tezos!.currentPrice * u.balance}',
                    fontSize: 20,
                    color: Colors.white,
                  ),
                const SizedBox(height: 20),
                InkWell(
                  onTap: (){

                  },
                  child: Row(
                    children: const [
                      DisplayText(
                        text: 'See more',
                        fontSize: 14,
                        color: Colors.white,
                      ),
                      SizedBox(width: 5),
                      Icon(Icons.arrow_forward_ios,
                          color: Colors.white, size: 15),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
