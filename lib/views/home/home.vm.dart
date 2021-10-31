import 'package:tezster_dart/tezster_dart.dart';

import '../../models/tezos/tezos.dart';
import '../../provider/provider.dart';
import '../../services/repository.dart';

import '../../models/account/account.dart';
import '../../models/operation/operation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
part 'home.vm.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.loading() = _Loading;
  const factory HomeState.data({
    // required
    UserAccountLocal? userAccountLocal,
    Account? userAccount,
    Tezos? tezos,
    @Default([]) List<Operation> operations,
  }) = _Data;
  const factory HomeState.error(
    String? error,
  ) = _Error;
}

class HomeVM extends StateNotifier<HomeState> {
  Repository repo;

  HomeVM(ProviderReference ref)
      : repo = ref.read(repositoryProvider),
        super(const HomeState.loading()) {
    getAccount();
  }

  void getAccount() async {
    const network = 'Granada';
    const address = 'tz1VuLR4ckBigsjreTGUuTtVcX358ewfRjU4';

    final account = await repo.getAccount(network: network, address: address);
    final operations =
        await repo.getOperations(network: network, address: address);
    final tezosPrice = await repo.getTezosMarketPrice();

    final currentState = state;
    if (currentState is _Data || currentState is _Loading) {
      state = HomeState.data(
        userAccountLocal: null,
        userAccount: account,
        operations: operations,
        tezos: tezosPrice,
      );
    }
  }

  void getOperations() async {
    const network = 'Granada';
    const address = 'tz1VuLR4ckBigsjreTGUuTtVcX358ewfRjU4';

    final operations =
        await repo.getOperations(network: network, address: address);

    final currentState = state;
    if (currentState is _Data) {
      state = HomeState.data(
        userAccountLocal: currentState.userAccountLocal,
        userAccount: currentState.userAccount,
        operations: operations,
      );
    }
  }

  void sendTransaction(
      {required double ammount, required String account}) async {
    List<String> keys = await TezsterDart.getKeysFromMnemonicAndPassphrase(
        mnemonic:
            'uphold mushroom virus inherit dish private cactus parent force frog ethics word',
        passphrase: '');
    final currentState = state;
    final secret = keys[0];
    final publickeyHash = keys[1];

    print('$keys');

    if (currentState is _Data) {
      final keyStore = KeyStoreModel(
        publicKey: currentState.userAccount!.address,
        secretKey: secret,
        publicKeyHash: publickeyHash,
      );

      var signer = await TezsterDart.createSigner(
          TezsterDart.writeKeyWithHint(keyStore.secretKey, 'edsk'));
      const network = 'Granada';

      final result = await TezsterDart.sendTransactionOperation(
        repo.networksChains[network]!,
        signer,
        keyStore,
        account,
        ammount.toInt(),
        10000,
      );

      print(result);
    }
  }
}
