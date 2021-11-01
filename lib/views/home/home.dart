import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../models/tezos/tezos.dart';
import '../../widgets/display.text.dart';

import '../../provider/provider.dart';
import '../settings/settings.dart';
import 'widgets/transaction_info.dart';
import 'widgets/wallet_info.dart';

class HomeView extends HookWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    final home = useProvider(homeProvider);
    final homeNotifier = useProvider(homeProvider.notifier);

    return SafeArea(
      child: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 8,
              ),
              child: OpenContainer<bool>(
                openBuilder: (__, _) {
                  return const CircleAvatar(
                    child: SettingsView(),
                  );
                },
                closedBuilder: (_, __) => Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 10,
                        offset: const Offset(0, 5),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.settings,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ),
          home.maybeMap(
            orElse: () => const Text('Network'),
            data: (data) => Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 8,
                ),
                child: Text(
                  data.userAccountLocal!.prefferedNetwork,
                  style: const TextStyle(fontSize: 14, color: Colors.white),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: height * 0.05),
            child: Align(
              alignment: Alignment.topCenter,
              child: home.maybeMap(
                data: (data) => Container(
                  alignment: Alignment.center,
                  height: height / 4,
                  width: width * 0.5,
                  child: Align(
                    alignment: Alignment.center,
                    child: PageView(
                      children: [
                        WalletInfo(
                          account: data.userAccount!,
                          tezos: data.tezos,
                        ),
                        TezosInfo(
                          tezos: data.tezos!,
                        )
                      ],
                    ),
                  ),
                ),
                loading: (_) => SizedBox(
                  height: 5,
                  width: width,
                  child: const LinearProgressIndicator(
                    color: Colors.indigo,
                  ),
                ),
                orElse: () => Container(),
              ),
            ),
          ),
          home.maybeWhen(
            data: (user, __, ___, operations, ____) => TransactionInfo(
              operatoins: operations,
              user: user,
              onRefresh: () async {
                return homeNotifier.getAccount();
              },
            ),
            loading: () => TransactionInfo(
              user: null,
              operatoins: const [],
              isLoading: true,
              onRefresh: () async {
                homeNotifier.getAccount();
              },
            ),
            orElse: () => Container(),
          ),
        ],
      ),
    );
  }
}

class TezosInfo extends StatelessWidget {
  final Tezos tezos;
  const TezosInfo({
    Key? key,
    required this.tezos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DisplayText(
              text: 'XTZ/USD : ${tezos.currentPrice}',
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            DisplayText(
              text: 'Market Cap : \$ ${tezos.marketCap.toStringAsFixed(2)}',
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            DisplayText(
              text: 'Total Volume\$ ${tezos.totalVolume.toStringAsFixed(2)}',
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            DisplayText(
              text: 'Price Change in 24h \$ ${tezos.priceChangePercentage24h}',
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )
          ],
        ),
      ),
    );
  }
}
