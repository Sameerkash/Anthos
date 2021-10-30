// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserAccountLocal _$$UserAccountLocalFromJson(Map<String, dynamic> json) =>
    _$UserAccountLocal(
      address: json['address'] as String,
      publicKey: json['publicKey'] as String,
      privateKey: json['privateKey'] as String,
      mnemonic: json['mnemonic'] as String,
      prefferedNetwork: json['prefferedNetwork'] as String? ?? 'Mainnet',
      seedPhrase: json['seedPhrase'] as String?,
    );

Map<String, dynamic> _$$UserAccountLocalToJson(_$UserAccountLocal instance) =>
    <String, dynamic>{
      'address': instance.address,
      'publicKey': instance.publicKey,
      'privateKey': instance.privateKey,
      'mnemonic': instance.mnemonic,
      'prefferedNetwork': instance.prefferedNetwork,
      'seedPhrase': instance.seedPhrase,
    };

_$UserAccount _$$UserAccountFromJson(Map<String, dynamic> json) =>
    _$UserAccount(
      alias: json['alias'] as String,
      address: json['address'] as String,
      publicKey: json['publicKey'] as String,
      balance: json['balance'] as int,
      revealed: json['revealed'] as bool?,
      counter: json['counter'] as int?,
      privateKey: json['privateKey'] as String?,
      secret: json['secret'] as String?,
      delegationLevel: json['delegationLevel'] as int?,
      delegationTime: json['delegationTime'] as String?,
      numContracts: json['numContracts'] as int?,
      numActivations: json['numActivations'] as int?,
      numDelegations: json['numDelegations'] as int?,
      numOriginations: json['numOriginations'] as int?,
      numTransactions: json['numTransactions'] as int?,
      numReveals: json['numReveals'] as int?,
      numMigrations: json['numMigrations'] as int?,
      firstActivity: json['firstActivity'] as int?,
      firstActivityTime: json['firstActivityTime'] as String?,
      lastActivity: json['lastActivity'] as int?,
      lastActivityTime: json['lastActivityTime'] as String?,
    );

Map<String, dynamic> _$$UserAccountToJson(_$UserAccount instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'address': instance.address,
      'publicKey': instance.publicKey,
      'balance': instance.balance,
      'revealed': instance.revealed,
      'counter': instance.counter,
      'privateKey': instance.privateKey,
      'secret': instance.secret,
      'delegationLevel': instance.delegationLevel,
      'delegationTime': instance.delegationTime,
      'numContracts': instance.numContracts,
      'numActivations': instance.numActivations,
      'numDelegations': instance.numDelegations,
      'numOriginations': instance.numOriginations,
      'numTransactions': instance.numTransactions,
      'numReveals': instance.numReveals,
      'numMigrations': instance.numMigrations,
      'firstActivity': instance.firstActivity,
      'firstActivityTime': instance.firstActivityTime,
      'lastActivity': instance.lastActivity,
      'lastActivityTime': instance.lastActivityTime,
    };

_$ContractAccount _$$ContractAccountFromJson(Map<String, dynamic> json) =>
    _$ContractAccount(
      kind: json['kind'] as String,
      privateKey: json['privateKey'] as String,
      secret: json['secret'] as String,
      address: json['address'] as String,
      tzips:
          (json['tzips'] as List<dynamic>?)?.map((e) => e as String).toList(),
      alias: json['alias'] as String?,
      balance: json['balance'] as int?,
      delegationLevel: json['delegationLevel'] as int?,
      delegationTime: json['delegationTime'] as String?,
      numContracts: json['numContracts'] as int?,
      numDelegations: json['numDelegations'] as int?,
      numOriginations: json['numOriginations'] as int?,
      numTransactions: json['numTransactions'] as int?,
      numReveals: json['numReveals'] as int?,
      numMigrations: json['numMigrations'] as int?,
      firstActivity: json['firstActivity'] as int?,
      firstActivityTime: json['firstActivityTime'] as String?,
      lastActivity: json['lastActivity'] as int?,
      lastActivityTime: json['lastActivityTime'] as String?,
      typeHash: json['typeHash'] as int?,
      codeHash: json['codeHash'] as int?,
    );

Map<String, dynamic> _$$ContractAccountToJson(_$ContractAccount instance) =>
    <String, dynamic>{
      'kind': instance.kind,
      'privateKey': instance.privateKey,
      'secret': instance.secret,
      'address': instance.address,
      'tzips': instance.tzips,
      'alias': instance.alias,
      'balance': instance.balance,
      'delegationLevel': instance.delegationLevel,
      'delegationTime': instance.delegationTime,
      'numContracts': instance.numContracts,
      'numDelegations': instance.numDelegations,
      'numOriginations': instance.numOriginations,
      'numTransactions': instance.numTransactions,
      'numReveals': instance.numReveals,
      'numMigrations': instance.numMigrations,
      'firstActivity': instance.firstActivity,
      'firstActivityTime': instance.firstActivityTime,
      'lastActivity': instance.lastActivity,
      'lastActivityTime': instance.lastActivityTime,
      'typeHash': instance.typeHash,
      'codeHash': instance.codeHash,
    };
