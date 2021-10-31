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
    @Default(false) bool isSending,
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

  Future<void> getAccount() async {
    const network = 'Granada';

    final userAccounLocal = await repo.getUserAccountLocal();
    final address = userAccounLocal!.address;

    // 'tz1VuLR4ckBigsjreTGUuTtVcX358ewfRjU4';

    /// API Calls
    final account = await repo.getAccount(network: network, address: address);
    final operations =
        await repo.getOperations(network: network, address: address);
    final tezosPrice = await repo.getTezosMarketPrice();

    final currentState = state;
    if (currentState is _Data || currentState is _Loading) {
      state = HomeState.data(
        userAccountLocal: userAccounLocal,
        userAccount: account,
        operations: operations,
        tezos: tezosPrice,
      );
    }
  }

  void getOperations() async {
    const network = 'Granada';
    // const address = 'tz1VuLR4ckBigsjreTGUuTtVcX358ewfRjU4';

    final currentState = state;
    if (currentState is _Data) {
      final operations = await repo.getOperations(
        network: network,
        address: currentState.userAccountLocal!.address,
      );

      state = HomeState.data(
        userAccountLocal: currentState.userAccountLocal,
        userAccount: currentState.userAccount,
        operations: operations,
      );
    }
  }

  Future<void> sendTransaction(
      {required double ammount, required String account}) async {
    final currentState = state;

    if (currentState is _Data) {
      final userAccount = currentState.userAccountLocal;

      state = currentState.copyWith(isSending: true);

      final keyStore = KeyStoreModel(
        publicKey: userAccount!.privateKey,
        secretKey: userAccount.secretKey,
        publicKeyHash: userAccount.address,
      );

      var signer = await TezsterDart.createSigner(
          TezsterDart.writeKeyWithHint(keyStore.secretKey, 'edsk'));
      const network = 'Granada';

      await TezsterDart.sendTransactionOperation(
        repo.networksChains[network]!,
        signer,
        keyStore,
        account,
        (ammount * 1000000).toInt(),
        10000,
      );

      state = currentState.copyWith(isSending: false);
      getAccount();
    }
  }
}
