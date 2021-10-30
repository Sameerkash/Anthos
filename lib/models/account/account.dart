import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'account.g.dart';
part 'account.freezed.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
class Account with _$Account {
  const factory Account.userLocal({
    required final String address,
    required final String publicKey,
    required final String privateKey,
    required final String mnemonic,
    @Default('Mainnet') final String prefferedNetwork,
    final String? seedPhrase,
  }) = UserAccountLocal;

  const factory Account.user({
    required final String alias,
    required final String address,
    required final String publicKey,
    required final int balance,
    final bool? revealed,
    final int? counter,
    final String? privateKey,
    final String? secret,
    final int? delegationLevel,
    final String? delegationTime,
    final int? numContracts,
    final int? numActivations,
    final int? numDelegations,
    final int? numOriginations,
    final int? numTransactions,
    final int? numReveals,
    final int? numMigrations,
    final int? firstActivity,
    final String? firstActivityTime,
    final int? lastActivity,
    final String? lastActivityTime,
  }) = UserAccount;

  const factory Account.contract({
    required final String kind,
    required final String privateKey,
    required final String secret,
    required final String address,
    final List<String>? tzips,
    final String? alias,
    final int? balance,
    final int? delegationLevel,
    final String? delegationTime,
    final int? numContracts,
    final int? numDelegations,
    final int? numOriginations,
    final int? numTransactions,
    final int? numReveals,
    final int? numMigrations,
    final int? firstActivity,
    final String? firstActivityTime,
    final int? lastActivity,
    final String? lastActivityTime,
    final int? typeHash,
    final int? codeHash,
  }) = ContractAccount;

  factory Account.fromJson(Map<String, dynamic> json) =>
      _$AccountFromJson(json);
}
