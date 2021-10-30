import 'package:anthos/models/tezos/tezos.dart';
import 'package:anthos/provider/provider.dart';
import 'package:anthos/services/repository.dart';

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
}
