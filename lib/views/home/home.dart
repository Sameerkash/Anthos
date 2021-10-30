import 'package:anthos/provider/provider.dart';
import 'package:anthos/services/repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:animations/animations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'widgets/wallet_info.dart';
import 'widgets/transaction_info.dart';
import '../settings/settings.dart';

class HomeView extends HookWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final home = useProvider(homeProvider);

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
          const Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15.0,
                vertical: 8,
              ),
              child: Text(
                'Network',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
            ),
          ),
          Positioned(
            top: 60,
            right: 130,
            child: home.maybeWhen(
              data: (_, account, tezos, ___) => WalletInfo(
                account: account!,
                tezos: tezos,
              ),
              loading: () => const SizedBox(
                  height: 5,
                  width: 500,
                  child: LinearProgressIndicator(
                    color: Colors.indigo,
                  )),
              orElse: () => Container(),
            ),
          ),
          home.maybeWhen(
            data: (_, __, ___, operations) =>
                TransactionInfo(operatoins: operations),
            loading: () =>
                const TransactionInfo(operatoins: [], isLoading: true),
            orElse: () => Container(),
          ),
        ],
      ),
    );
  }
}
