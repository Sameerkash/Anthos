import 'package:anthos/models/account/account.dart';
import 'package:anthos/provider/provider.dart';
import 'package:anthos/services/repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tezster_dart/tezster_dart.dart';
part 'auth.vm.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.loading() = Loading;
  const factory AuthState.authenticated() = Authenticated;
  const factory AuthState.noData({
    @Default(false) bool isLoading,
  }) = NoData;
  const factory AuthState.data({
    String? mnemonic,
    @Default(false) bool isLoading,
  }) = Data;
}

class AuthVM extends StateNotifier<AuthState> {
  Repository repo;

  AuthVM(ProviderReference ref)
      : repo = ref.read(repositoryProvider),
        super(const AuthState.loading()) {
    getAccount();
  }

  Future<void> getAccount() async {
    final current = state;
    if (current is Data) {
      state = const AuthState.loading();
    }
    final account = await repo.getUserAccountLocal();
    if (account == null) {
      state = const AuthState.noData();
    } else {
      state = const AuthState.authenticated();
    }
  }

  void generateMnemonic() async {
    state = const AuthState.noData(isLoading: true);

    final mnemonic = TezsterDart.generateMnemonic();

    List<String> keys = await TezsterDart.getKeysFromMnemonicAndPassphrase(
      mnemonic: mnemonic,
      passphrase: '',
    );

    final UserAccountLocal userLocal = UserAccountLocal(
      secretKey: keys[0],
      privateKey: keys[1],
      address: keys[2],
      mnemonic: mnemonic,
    );

    await repo.setUserAccountLocal(userLocal);

    state = AuthState.data(mnemonic: mnemonic);
  }

  void importAccount({required String mnemonic}) async {
    List<String> keys = await TezsterDart.getKeysFromMnemonicAndPassphrase(
      mnemonic: mnemonic,
      passphrase: '',
    );

    final UserAccountLocal userLocal = UserAccountLocal(
      secretKey: keys[0],
      privateKey: keys[1],
      address: keys[2],
      mnemonic: mnemonic,
      balance: 0,
    );

    await repo.setUserAccountLocal(userLocal);

    getAccount();
  }

  void resetAccount() async {
    state = const AuthState.loading();

    await repo.deleteAccount();
    getAccount();
  }
}
