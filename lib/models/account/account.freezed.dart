// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'account.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Account _$AccountFromJson(Map<String, dynamic> json) {
  switch (json['type'] as String?) {
    case 'userLocal':
      return UserAccountLocal.fromJson(json);
    case 'user':
      return UserAccount.fromJson(json);
    case 'contract':
      return ContractAccount.fromJson(json);
    case 'empty':
      return EmptyAccount.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Account', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$AccountTearOff {
  const _$AccountTearOff();

  UserAccountLocal userLocal(
      {String type = 'userLocal',
      required String address,
      required String secretKey,
      required String privateKey,
      required String mnemonic,
      num? balance = 0,
      String prefferedNetwork = 'Mainnet',
      String? seedPhrase}) {
    return UserAccountLocal(
      type: type,
      address: address,
      secretKey: secretKey,
      privateKey: privateKey,
      mnemonic: mnemonic,
      balance: balance,
      prefferedNetwork: prefferedNetwork,
      seedPhrase: seedPhrase,
    );
  }

  UserAccount user(
      {required String address,
      required num balance,
      String? publicKey,
      String? alias,
      bool? revealed,
      int? counter,
      String? privateKey,
      int? delegationLevel,
      String? delegationTime,
      int? numContracts,
      int? numActivations,
      int? numDelegations,
      int? numOriginations,
      int? numTransactions,
      int? numReveals,
      int? numMigrations,
      int? firstActivity,
      String? firstActivityTime,
      int? lastActivity,
      String? lastActivityTime}) {
    return UserAccount(
      address: address,
      balance: balance,
      publicKey: publicKey,
      alias: alias,
      revealed: revealed,
      counter: counter,
      privateKey: privateKey,
      delegationLevel: delegationLevel,
      delegationTime: delegationTime,
      numContracts: numContracts,
      numActivations: numActivations,
      numDelegations: numDelegations,
      numOriginations: numOriginations,
      numTransactions: numTransactions,
      numReveals: numReveals,
      numMigrations: numMigrations,
      firstActivity: firstActivity,
      firstActivityTime: firstActivityTime,
      lastActivity: lastActivity,
      lastActivityTime: lastActivityTime,
    );
  }

  ContractAccount contract(
      {required String kind,
      required String address,
      List<String>? tzips,
      String? alias,
      num? balance,
      int? delegationLevel,
      String? delegationTime,
      int? numContracts,
      int? numDelegations,
      int? numOriginations,
      int? numTransactions,
      int? numReveals,
      int? numMigrations,
      int? firstActivity,
      String? firstActivityTime,
      int? lastActivity,
      String? lastActivityTime,
      int? typeHash,
      int? codeHash}) {
    return ContractAccount(
      kind: kind,
      address: address,
      tzips: tzips,
      alias: alias,
      balance: balance,
      delegationLevel: delegationLevel,
      delegationTime: delegationTime,
      numContracts: numContracts,
      numDelegations: numDelegations,
      numOriginations: numOriginations,
      numTransactions: numTransactions,
      numReveals: numReveals,
      numMigrations: numMigrations,
      firstActivity: firstActivity,
      firstActivityTime: firstActivityTime,
      lastActivity: lastActivity,
      lastActivityTime: lastActivityTime,
      typeHash: typeHash,
      codeHash: codeHash,
    );
  }

  EmptyAccount empty(
      {required String address, num? balance = 0, int? counter}) {
    return EmptyAccount(
      address: address,
      balance: balance,
      counter: counter,
    );
  }

  Account fromJson(Map<String, Object> json) {
    return Account.fromJson(json);
  }
}

/// @nodoc
const $Account = _$AccountTearOff();

/// @nodoc
mixin _$Account {
  String get address => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)
        userLocal,
    required TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)
        user,
    required TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)
        contract,
    required TResult Function(String address, num? balance, int? counter) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAccountLocal value) userLocal,
    required TResult Function(UserAccount value) user,
    required TResult Function(ContractAccount value) contract,
    required TResult Function(EmptyAccount value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountCopyWith<Account> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountCopyWith<$Res> {
  factory $AccountCopyWith(Account value, $Res Function(Account) then) =
      _$AccountCopyWithImpl<$Res>;
  $Res call({String address});
}

/// @nodoc
class _$AccountCopyWithImpl<$Res> implements $AccountCopyWith<$Res> {
  _$AccountCopyWithImpl(this._value, this._then);

  final Account _value;
  // ignore: unused_field
  final $Res Function(Account) _then;

  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_value.copyWith(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class $UserAccountLocalCopyWith<$Res>
    implements $AccountCopyWith<$Res> {
  factory $UserAccountLocalCopyWith(
          UserAccountLocal value, $Res Function(UserAccountLocal) then) =
      _$UserAccountLocalCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String address,
      String secretKey,
      String privateKey,
      String mnemonic,
      num? balance,
      String prefferedNetwork,
      String? seedPhrase});
}

/// @nodoc
class _$UserAccountLocalCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements $UserAccountLocalCopyWith<$Res> {
  _$UserAccountLocalCopyWithImpl(
      UserAccountLocal _value, $Res Function(UserAccountLocal) _then)
      : super(_value, (v) => _then(v as UserAccountLocal));

  @override
  UserAccountLocal get _value => super._value as UserAccountLocal;

  @override
  $Res call({
    Object? type = freezed,
    Object? address = freezed,
    Object? secretKey = freezed,
    Object? privateKey = freezed,
    Object? mnemonic = freezed,
    Object? balance = freezed,
    Object? prefferedNetwork = freezed,
    Object? seedPhrase = freezed,
  }) {
    return _then(UserAccountLocal(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      secretKey: secretKey == freezed
          ? _value.secretKey
          : secretKey // ignore: cast_nullable_to_non_nullable
              as String,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonic: mnemonic == freezed
          ? _value.mnemonic
          : mnemonic // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num?,
      prefferedNetwork: prefferedNetwork == freezed
          ? _value.prefferedNetwork
          : prefferedNetwork // ignore: cast_nullable_to_non_nullable
              as String,
      seedPhrase: seedPhrase == freezed
          ? _value.seedPhrase
          : seedPhrase // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAccountLocal
    with DiagnosticableTreeMixin
    implements UserAccountLocal {
  const _$UserAccountLocal(
      {this.type = 'userLocal',
      required this.address,
      required this.secretKey,
      required this.privateKey,
      required this.mnemonic,
      this.balance = 0,
      this.prefferedNetwork = 'Mainnet',
      this.seedPhrase});

  factory _$UserAccountLocal.fromJson(Map<String, dynamic> json) =>
      _$$UserAccountLocalFromJson(json);

  @JsonKey(defaultValue: 'userLocal')
  @override
  final String type;
  @override
  final String address;
  @override
  final String secretKey;
  @override
  final String privateKey;
  @override
  final String mnemonic;
  @JsonKey(defaultValue: 0)
  @override
  final num? balance;
  @JsonKey(defaultValue: 'Mainnet')
  @override
  final String prefferedNetwork;
  @override
  final String? seedPhrase;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Account.userLocal(type: $type, address: $address, secretKey: $secretKey, privateKey: $privateKey, mnemonic: $mnemonic, balance: $balance, prefferedNetwork: $prefferedNetwork, seedPhrase: $seedPhrase)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Account.userLocal'))
      ..add(DiagnosticsProperty('type', type))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('secretKey', secretKey))
      ..add(DiagnosticsProperty('privateKey', privateKey))
      ..add(DiagnosticsProperty('mnemonic', mnemonic))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('prefferedNetwork', prefferedNetwork))
      ..add(DiagnosticsProperty('seedPhrase', seedPhrase));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAccountLocal &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.secretKey, secretKey) ||
                const DeepCollectionEquality()
                    .equals(other.secretKey, secretKey)) &&
            (identical(other.privateKey, privateKey) ||
                const DeepCollectionEquality()
                    .equals(other.privateKey, privateKey)) &&
            (identical(other.mnemonic, mnemonic) ||
                const DeepCollectionEquality()
                    .equals(other.mnemonic, mnemonic)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.prefferedNetwork, prefferedNetwork) ||
                const DeepCollectionEquality()
                    .equals(other.prefferedNetwork, prefferedNetwork)) &&
            (identical(other.seedPhrase, seedPhrase) ||
                const DeepCollectionEquality()
                    .equals(other.seedPhrase, seedPhrase)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(secretKey) ^
      const DeepCollectionEquality().hash(privateKey) ^
      const DeepCollectionEquality().hash(mnemonic) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(prefferedNetwork) ^
      const DeepCollectionEquality().hash(seedPhrase);

  @JsonKey(ignore: true)
  @override
  $UserAccountLocalCopyWith<UserAccountLocal> get copyWith =>
      _$UserAccountLocalCopyWithImpl<UserAccountLocal>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)
        userLocal,
    required TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)
        user,
    required TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)
        contract,
    required TResult Function(String address, num? balance, int? counter) empty,
  }) {
    return userLocal(type, address, secretKey, privateKey, mnemonic, balance,
        prefferedNetwork, seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
  }) {
    return userLocal?.call(type, address, secretKey, privateKey, mnemonic,
        balance, prefferedNetwork, seedPhrase);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
    required TResult orElse(),
  }) {
    if (userLocal != null) {
      return userLocal(type, address, secretKey, privateKey, mnemonic, balance,
          prefferedNetwork, seedPhrase);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAccountLocal value) userLocal,
    required TResult Function(UserAccount value) user,
    required TResult Function(ContractAccount value) contract,
    required TResult Function(EmptyAccount value) empty,
  }) {
    return userLocal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
  }) {
    return userLocal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
    required TResult orElse(),
  }) {
    if (userLocal != null) {
      return userLocal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccountLocalToJson(this)..['type'] = 'userLocal';
  }
}

abstract class UserAccountLocal implements Account {
  const factory UserAccountLocal(
      {String type,
      required String address,
      required String secretKey,
      required String privateKey,
      required String mnemonic,
      num? balance,
      String prefferedNetwork,
      String? seedPhrase}) = _$UserAccountLocal;

  factory UserAccountLocal.fromJson(Map<String, dynamic> json) =
      _$UserAccountLocal.fromJson;

  String get type => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  String get secretKey => throw _privateConstructorUsedError;
  String get privateKey => throw _privateConstructorUsedError;
  String get mnemonic => throw _privateConstructorUsedError;
  num? get balance => throw _privateConstructorUsedError;
  String get prefferedNetwork => throw _privateConstructorUsedError;
  String? get seedPhrase => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UserAccountLocalCopyWith<UserAccountLocal> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory $UserAccountCopyWith(
          UserAccount value, $Res Function(UserAccount) then) =
      _$UserAccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {String address,
      num balance,
      String? publicKey,
      String? alias,
      bool? revealed,
      int? counter,
      String? privateKey,
      int? delegationLevel,
      String? delegationTime,
      int? numContracts,
      int? numActivations,
      int? numDelegations,
      int? numOriginations,
      int? numTransactions,
      int? numReveals,
      int? numMigrations,
      int? firstActivity,
      String? firstActivityTime,
      int? lastActivity,
      String? lastActivityTime});
}

/// @nodoc
class _$UserAccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements $UserAccountCopyWith<$Res> {
  _$UserAccountCopyWithImpl(
      UserAccount _value, $Res Function(UserAccount) _then)
      : super(_value, (v) => _then(v as UserAccount));

  @override
  UserAccount get _value => super._value as UserAccount;

  @override
  $Res call({
    Object? address = freezed,
    Object? balance = freezed,
    Object? publicKey = freezed,
    Object? alias = freezed,
    Object? revealed = freezed,
    Object? counter = freezed,
    Object? privateKey = freezed,
    Object? delegationLevel = freezed,
    Object? delegationTime = freezed,
    Object? numContracts = freezed,
    Object? numActivations = freezed,
    Object? numDelegations = freezed,
    Object? numOriginations = freezed,
    Object? numTransactions = freezed,
    Object? numReveals = freezed,
    Object? numMigrations = freezed,
    Object? firstActivity = freezed,
    Object? firstActivityTime = freezed,
    Object? lastActivity = freezed,
    Object? lastActivityTime = freezed,
  }) {
    return _then(UserAccount(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      revealed: revealed == freezed
          ? _value.revealed
          : revealed // ignore: cast_nullable_to_non_nullable
              as bool?,
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int?,
      privateKey: privateKey == freezed
          ? _value.privateKey
          : privateKey // ignore: cast_nullable_to_non_nullable
              as String?,
      delegationLevel: delegationLevel == freezed
          ? _value.delegationLevel
          : delegationLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      delegationTime: delegationTime == freezed
          ? _value.delegationTime
          : delegationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      numContracts: numContracts == freezed
          ? _value.numContracts
          : numContracts // ignore: cast_nullable_to_non_nullable
              as int?,
      numActivations: numActivations == freezed
          ? _value.numActivations
          : numActivations // ignore: cast_nullable_to_non_nullable
              as int?,
      numDelegations: numDelegations == freezed
          ? _value.numDelegations
          : numDelegations // ignore: cast_nullable_to_non_nullable
              as int?,
      numOriginations: numOriginations == freezed
          ? _value.numOriginations
          : numOriginations // ignore: cast_nullable_to_non_nullable
              as int?,
      numTransactions: numTransactions == freezed
          ? _value.numTransactions
          : numTransactions // ignore: cast_nullable_to_non_nullable
              as int?,
      numReveals: numReveals == freezed
          ? _value.numReveals
          : numReveals // ignore: cast_nullable_to_non_nullable
              as int?,
      numMigrations: numMigrations == freezed
          ? _value.numMigrations
          : numMigrations // ignore: cast_nullable_to_non_nullable
              as int?,
      firstActivity: firstActivity == freezed
          ? _value.firstActivity
          : firstActivity // ignore: cast_nullable_to_non_nullable
              as int?,
      firstActivityTime: firstActivityTime == freezed
          ? _value.firstActivityTime
          : firstActivityTime // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivity: lastActivity == freezed
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as int?,
      lastActivityTime: lastActivityTime == freezed
          ? _value.lastActivityTime
          : lastActivityTime // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserAccount with DiagnosticableTreeMixin implements UserAccount {
  const _$UserAccount(
      {required this.address,
      required this.balance,
      this.publicKey,
      this.alias,
      this.revealed,
      this.counter,
      this.privateKey,
      this.delegationLevel,
      this.delegationTime,
      this.numContracts,
      this.numActivations,
      this.numDelegations,
      this.numOriginations,
      this.numTransactions,
      this.numReveals,
      this.numMigrations,
      this.firstActivity,
      this.firstActivityTime,
      this.lastActivity,
      this.lastActivityTime});

  factory _$UserAccount.fromJson(Map<String, dynamic> json) =>
      _$$UserAccountFromJson(json);

  @override
  final String address;
  @override
  final num balance;
  @override
  final String? publicKey;
  @override
  final String? alias;
  @override
  final bool? revealed;
  @override
  final int? counter;
  @override
  final String? privateKey;
  @override
  final int? delegationLevel;
  @override
  final String? delegationTime;
  @override
  final int? numContracts;
  @override
  final int? numActivations;
  @override
  final int? numDelegations;
  @override
  final int? numOriginations;
  @override
  final int? numTransactions;
  @override
  final int? numReveals;
  @override
  final int? numMigrations;
  @override
  final int? firstActivity;
  @override
  final String? firstActivityTime;
  @override
  final int? lastActivity;
  @override
  final String? lastActivityTime;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Account.user(address: $address, balance: $balance, publicKey: $publicKey, alias: $alias, revealed: $revealed, counter: $counter, privateKey: $privateKey, delegationLevel: $delegationLevel, delegationTime: $delegationTime, numContracts: $numContracts, numActivations: $numActivations, numDelegations: $numDelegations, numOriginations: $numOriginations, numTransactions: $numTransactions, numReveals: $numReveals, numMigrations: $numMigrations, firstActivity: $firstActivity, firstActivityTime: $firstActivityTime, lastActivity: $lastActivity, lastActivityTime: $lastActivityTime)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Account.user'))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('publicKey', publicKey))
      ..add(DiagnosticsProperty('alias', alias))
      ..add(DiagnosticsProperty('revealed', revealed))
      ..add(DiagnosticsProperty('counter', counter))
      ..add(DiagnosticsProperty('privateKey', privateKey))
      ..add(DiagnosticsProperty('delegationLevel', delegationLevel))
      ..add(DiagnosticsProperty('delegationTime', delegationTime))
      ..add(DiagnosticsProperty('numContracts', numContracts))
      ..add(DiagnosticsProperty('numActivations', numActivations))
      ..add(DiagnosticsProperty('numDelegations', numDelegations))
      ..add(DiagnosticsProperty('numOriginations', numOriginations))
      ..add(DiagnosticsProperty('numTransactions', numTransactions))
      ..add(DiagnosticsProperty('numReveals', numReveals))
      ..add(DiagnosticsProperty('numMigrations', numMigrations))
      ..add(DiagnosticsProperty('firstActivity', firstActivity))
      ..add(DiagnosticsProperty('firstActivityTime', firstActivityTime))
      ..add(DiagnosticsProperty('lastActivity', lastActivity))
      ..add(DiagnosticsProperty('lastActivityTime', lastActivityTime));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is UserAccount &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.publicKey, publicKey) ||
                const DeepCollectionEquality()
                    .equals(other.publicKey, publicKey)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.revealed, revealed) ||
                const DeepCollectionEquality()
                    .equals(other.revealed, revealed)) &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality()
                    .equals(other.counter, counter)) &&
            (identical(other.privateKey, privateKey) ||
                const DeepCollectionEquality()
                    .equals(other.privateKey, privateKey)) &&
            (identical(other.delegationLevel, delegationLevel) ||
                const DeepCollectionEquality()
                    .equals(other.delegationLevel, delegationLevel)) &&
            (identical(other.delegationTime, delegationTime) ||
                const DeepCollectionEquality()
                    .equals(other.delegationTime, delegationTime)) &&
            (identical(other.numContracts, numContracts) ||
                const DeepCollectionEquality()
                    .equals(other.numContracts, numContracts)) &&
            (identical(other.numActivations, numActivations) ||
                const DeepCollectionEquality()
                    .equals(other.numActivations, numActivations)) &&
            (identical(other.numDelegations, numDelegations) ||
                const DeepCollectionEquality()
                    .equals(other.numDelegations, numDelegations)) &&
            (identical(other.numOriginations, numOriginations) ||
                const DeepCollectionEquality()
                    .equals(other.numOriginations, numOriginations)) &&
            (identical(other.numTransactions, numTransactions) ||
                const DeepCollectionEquality()
                    .equals(other.numTransactions, numTransactions)) &&
            (identical(other.numReveals, numReveals) ||
                const DeepCollectionEquality()
                    .equals(other.numReveals, numReveals)) &&
            (identical(other.numMigrations, numMigrations) ||
                const DeepCollectionEquality()
                    .equals(other.numMigrations, numMigrations)) &&
            (identical(other.firstActivity, firstActivity) ||
                const DeepCollectionEquality()
                    .equals(other.firstActivity, firstActivity)) &&
            (identical(other.firstActivityTime, firstActivityTime) ||
                const DeepCollectionEquality()
                    .equals(other.firstActivityTime, firstActivityTime)) &&
            (identical(other.lastActivity, lastActivity) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivity, lastActivity)) &&
            (identical(other.lastActivityTime, lastActivityTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityTime, lastActivityTime)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(publicKey) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(revealed) ^
      const DeepCollectionEquality().hash(counter) ^
      const DeepCollectionEquality().hash(privateKey) ^
      const DeepCollectionEquality().hash(delegationLevel) ^
      const DeepCollectionEquality().hash(delegationTime) ^
      const DeepCollectionEquality().hash(numContracts) ^
      const DeepCollectionEquality().hash(numActivations) ^
      const DeepCollectionEquality().hash(numDelegations) ^
      const DeepCollectionEquality().hash(numOriginations) ^
      const DeepCollectionEquality().hash(numTransactions) ^
      const DeepCollectionEquality().hash(numReveals) ^
      const DeepCollectionEquality().hash(numMigrations) ^
      const DeepCollectionEquality().hash(firstActivity) ^
      const DeepCollectionEquality().hash(firstActivityTime) ^
      const DeepCollectionEquality().hash(lastActivity) ^
      const DeepCollectionEquality().hash(lastActivityTime);

  @JsonKey(ignore: true)
  @override
  $UserAccountCopyWith<UserAccount> get copyWith =>
      _$UserAccountCopyWithImpl<UserAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)
        userLocal,
    required TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)
        user,
    required TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)
        contract,
    required TResult Function(String address, num? balance, int? counter) empty,
  }) {
    return user(
        address,
        balance,
        publicKey,
        alias,
        revealed,
        counter,
        privateKey,
        delegationLevel,
        delegationTime,
        numContracts,
        numActivations,
        numDelegations,
        numOriginations,
        numTransactions,
        numReveals,
        numMigrations,
        firstActivity,
        firstActivityTime,
        lastActivity,
        lastActivityTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
  }) {
    return user?.call(
        address,
        balance,
        publicKey,
        alias,
        revealed,
        counter,
        privateKey,
        delegationLevel,
        delegationTime,
        numContracts,
        numActivations,
        numDelegations,
        numOriginations,
        numTransactions,
        numReveals,
        numMigrations,
        firstActivity,
        firstActivityTime,
        lastActivity,
        lastActivityTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(
          address,
          balance,
          publicKey,
          alias,
          revealed,
          counter,
          privateKey,
          delegationLevel,
          delegationTime,
          numContracts,
          numActivations,
          numDelegations,
          numOriginations,
          numTransactions,
          numReveals,
          numMigrations,
          firstActivity,
          firstActivityTime,
          lastActivity,
          lastActivityTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAccountLocal value) userLocal,
    required TResult Function(UserAccount value) user,
    required TResult Function(ContractAccount value) contract,
    required TResult Function(EmptyAccount value) empty,
  }) {
    return user(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
  }) {
    return user?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
    required TResult orElse(),
  }) {
    if (user != null) {
      return user(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UserAccountToJson(this)..['type'] = 'user';
  }
}

abstract class UserAccount implements Account {
  const factory UserAccount(
      {required String address,
      required num balance,
      String? publicKey,
      String? alias,
      bool? revealed,
      int? counter,
      String? privateKey,
      int? delegationLevel,
      String? delegationTime,
      int? numContracts,
      int? numActivations,
      int? numDelegations,
      int? numOriginations,
      int? numTransactions,
      int? numReveals,
      int? numMigrations,
      int? firstActivity,
      String? firstActivityTime,
      int? lastActivity,
      String? lastActivityTime}) = _$UserAccount;

  factory UserAccount.fromJson(Map<String, dynamic> json) =
      _$UserAccount.fromJson;

  @override
  String get address => throw _privateConstructorUsedError;
  num get balance => throw _privateConstructorUsedError;
  String? get publicKey => throw _privateConstructorUsedError;
  String? get alias => throw _privateConstructorUsedError;
  bool? get revealed => throw _privateConstructorUsedError;
  int? get counter => throw _privateConstructorUsedError;
  String? get privateKey => throw _privateConstructorUsedError;
  int? get delegationLevel => throw _privateConstructorUsedError;
  String? get delegationTime => throw _privateConstructorUsedError;
  int? get numContracts => throw _privateConstructorUsedError;
  int? get numActivations => throw _privateConstructorUsedError;
  int? get numDelegations => throw _privateConstructorUsedError;
  int? get numOriginations => throw _privateConstructorUsedError;
  int? get numTransactions => throw _privateConstructorUsedError;
  int? get numReveals => throw _privateConstructorUsedError;
  int? get numMigrations => throw _privateConstructorUsedError;
  int? get firstActivity => throw _privateConstructorUsedError;
  String? get firstActivityTime => throw _privateConstructorUsedError;
  int? get lastActivity => throw _privateConstructorUsedError;
  String? get lastActivityTime => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $UserAccountCopyWith<UserAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractAccountCopyWith<$Res>
    implements $AccountCopyWith<$Res> {
  factory $ContractAccountCopyWith(
          ContractAccount value, $Res Function(ContractAccount) then) =
      _$ContractAccountCopyWithImpl<$Res>;
  @override
  $Res call(
      {String kind,
      String address,
      List<String>? tzips,
      String? alias,
      num? balance,
      int? delegationLevel,
      String? delegationTime,
      int? numContracts,
      int? numDelegations,
      int? numOriginations,
      int? numTransactions,
      int? numReveals,
      int? numMigrations,
      int? firstActivity,
      String? firstActivityTime,
      int? lastActivity,
      String? lastActivityTime,
      int? typeHash,
      int? codeHash});
}

/// @nodoc
class _$ContractAccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements $ContractAccountCopyWith<$Res> {
  _$ContractAccountCopyWithImpl(
      ContractAccount _value, $Res Function(ContractAccount) _then)
      : super(_value, (v) => _then(v as ContractAccount));

  @override
  ContractAccount get _value => super._value as ContractAccount;

  @override
  $Res call({
    Object? kind = freezed,
    Object? address = freezed,
    Object? tzips = freezed,
    Object? alias = freezed,
    Object? balance = freezed,
    Object? delegationLevel = freezed,
    Object? delegationTime = freezed,
    Object? numContracts = freezed,
    Object? numDelegations = freezed,
    Object? numOriginations = freezed,
    Object? numTransactions = freezed,
    Object? numReveals = freezed,
    Object? numMigrations = freezed,
    Object? firstActivity = freezed,
    Object? firstActivityTime = freezed,
    Object? lastActivity = freezed,
    Object? lastActivityTime = freezed,
    Object? typeHash = freezed,
    Object? codeHash = freezed,
  }) {
    return _then(ContractAccount(
      kind: kind == freezed
          ? _value.kind
          : kind // ignore: cast_nullable_to_non_nullable
              as String,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      tzips: tzips == freezed
          ? _value.tzips
          : tzips // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num?,
      delegationLevel: delegationLevel == freezed
          ? _value.delegationLevel
          : delegationLevel // ignore: cast_nullable_to_non_nullable
              as int?,
      delegationTime: delegationTime == freezed
          ? _value.delegationTime
          : delegationTime // ignore: cast_nullable_to_non_nullable
              as String?,
      numContracts: numContracts == freezed
          ? _value.numContracts
          : numContracts // ignore: cast_nullable_to_non_nullable
              as int?,
      numDelegations: numDelegations == freezed
          ? _value.numDelegations
          : numDelegations // ignore: cast_nullable_to_non_nullable
              as int?,
      numOriginations: numOriginations == freezed
          ? _value.numOriginations
          : numOriginations // ignore: cast_nullable_to_non_nullable
              as int?,
      numTransactions: numTransactions == freezed
          ? _value.numTransactions
          : numTransactions // ignore: cast_nullable_to_non_nullable
              as int?,
      numReveals: numReveals == freezed
          ? _value.numReveals
          : numReveals // ignore: cast_nullable_to_non_nullable
              as int?,
      numMigrations: numMigrations == freezed
          ? _value.numMigrations
          : numMigrations // ignore: cast_nullable_to_non_nullable
              as int?,
      firstActivity: firstActivity == freezed
          ? _value.firstActivity
          : firstActivity // ignore: cast_nullable_to_non_nullable
              as int?,
      firstActivityTime: firstActivityTime == freezed
          ? _value.firstActivityTime
          : firstActivityTime // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActivity: lastActivity == freezed
          ? _value.lastActivity
          : lastActivity // ignore: cast_nullable_to_non_nullable
              as int?,
      lastActivityTime: lastActivityTime == freezed
          ? _value.lastActivityTime
          : lastActivityTime // ignore: cast_nullable_to_non_nullable
              as String?,
      typeHash: typeHash == freezed
          ? _value.typeHash
          : typeHash // ignore: cast_nullable_to_non_nullable
              as int?,
      codeHash: codeHash == freezed
          ? _value.codeHash
          : codeHash // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContractAccount
    with DiagnosticableTreeMixin
    implements ContractAccount {
  const _$ContractAccount(
      {required this.kind,
      required this.address,
      this.tzips,
      this.alias,
      this.balance,
      this.delegationLevel,
      this.delegationTime,
      this.numContracts,
      this.numDelegations,
      this.numOriginations,
      this.numTransactions,
      this.numReveals,
      this.numMigrations,
      this.firstActivity,
      this.firstActivityTime,
      this.lastActivity,
      this.lastActivityTime,
      this.typeHash,
      this.codeHash});

  factory _$ContractAccount.fromJson(Map<String, dynamic> json) =>
      _$$ContractAccountFromJson(json);

  @override
  final String kind;
  @override
  final String address;
  @override
  final List<String>? tzips;
  @override
  final String? alias;
  @override
  final num? balance;
  @override
  final int? delegationLevel;
  @override
  final String? delegationTime;
  @override
  final int? numContracts;
  @override
  final int? numDelegations;
  @override
  final int? numOriginations;
  @override
  final int? numTransactions;
  @override
  final int? numReveals;
  @override
  final int? numMigrations;
  @override
  final int? firstActivity;
  @override
  final String? firstActivityTime;
  @override
  final int? lastActivity;
  @override
  final String? lastActivityTime;
  @override
  final int? typeHash;
  @override
  final int? codeHash;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Account.contract(kind: $kind, address: $address, tzips: $tzips, alias: $alias, balance: $balance, delegationLevel: $delegationLevel, delegationTime: $delegationTime, numContracts: $numContracts, numDelegations: $numDelegations, numOriginations: $numOriginations, numTransactions: $numTransactions, numReveals: $numReveals, numMigrations: $numMigrations, firstActivity: $firstActivity, firstActivityTime: $firstActivityTime, lastActivity: $lastActivity, lastActivityTime: $lastActivityTime, typeHash: $typeHash, codeHash: $codeHash)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Account.contract'))
      ..add(DiagnosticsProperty('kind', kind))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('tzips', tzips))
      ..add(DiagnosticsProperty('alias', alias))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('delegationLevel', delegationLevel))
      ..add(DiagnosticsProperty('delegationTime', delegationTime))
      ..add(DiagnosticsProperty('numContracts', numContracts))
      ..add(DiagnosticsProperty('numDelegations', numDelegations))
      ..add(DiagnosticsProperty('numOriginations', numOriginations))
      ..add(DiagnosticsProperty('numTransactions', numTransactions))
      ..add(DiagnosticsProperty('numReveals', numReveals))
      ..add(DiagnosticsProperty('numMigrations', numMigrations))
      ..add(DiagnosticsProperty('firstActivity', firstActivity))
      ..add(DiagnosticsProperty('firstActivityTime', firstActivityTime))
      ..add(DiagnosticsProperty('lastActivity', lastActivity))
      ..add(DiagnosticsProperty('lastActivityTime', lastActivityTime))
      ..add(DiagnosticsProperty('typeHash', typeHash))
      ..add(DiagnosticsProperty('codeHash', codeHash));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ContractAccount &&
            (identical(other.kind, kind) ||
                const DeepCollectionEquality().equals(other.kind, kind)) &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.tzips, tzips) ||
                const DeepCollectionEquality().equals(other.tzips, tzips)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.delegationLevel, delegationLevel) ||
                const DeepCollectionEquality()
                    .equals(other.delegationLevel, delegationLevel)) &&
            (identical(other.delegationTime, delegationTime) ||
                const DeepCollectionEquality()
                    .equals(other.delegationTime, delegationTime)) &&
            (identical(other.numContracts, numContracts) ||
                const DeepCollectionEquality()
                    .equals(other.numContracts, numContracts)) &&
            (identical(other.numDelegations, numDelegations) ||
                const DeepCollectionEquality()
                    .equals(other.numDelegations, numDelegations)) &&
            (identical(other.numOriginations, numOriginations) ||
                const DeepCollectionEquality()
                    .equals(other.numOriginations, numOriginations)) &&
            (identical(other.numTransactions, numTransactions) ||
                const DeepCollectionEquality()
                    .equals(other.numTransactions, numTransactions)) &&
            (identical(other.numReveals, numReveals) ||
                const DeepCollectionEquality()
                    .equals(other.numReveals, numReveals)) &&
            (identical(other.numMigrations, numMigrations) ||
                const DeepCollectionEquality()
                    .equals(other.numMigrations, numMigrations)) &&
            (identical(other.firstActivity, firstActivity) ||
                const DeepCollectionEquality()
                    .equals(other.firstActivity, firstActivity)) &&
            (identical(other.firstActivityTime, firstActivityTime) ||
                const DeepCollectionEquality()
                    .equals(other.firstActivityTime, firstActivityTime)) &&
            (identical(other.lastActivity, lastActivity) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivity, lastActivity)) &&
            (identical(other.lastActivityTime, lastActivityTime) ||
                const DeepCollectionEquality()
                    .equals(other.lastActivityTime, lastActivityTime)) &&
            (identical(other.typeHash, typeHash) ||
                const DeepCollectionEquality()
                    .equals(other.typeHash, typeHash)) &&
            (identical(other.codeHash, codeHash) ||
                const DeepCollectionEquality()
                    .equals(other.codeHash, codeHash)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(kind) ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(tzips) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(delegationLevel) ^
      const DeepCollectionEquality().hash(delegationTime) ^
      const DeepCollectionEquality().hash(numContracts) ^
      const DeepCollectionEquality().hash(numDelegations) ^
      const DeepCollectionEquality().hash(numOriginations) ^
      const DeepCollectionEquality().hash(numTransactions) ^
      const DeepCollectionEquality().hash(numReveals) ^
      const DeepCollectionEquality().hash(numMigrations) ^
      const DeepCollectionEquality().hash(firstActivity) ^
      const DeepCollectionEquality().hash(firstActivityTime) ^
      const DeepCollectionEquality().hash(lastActivity) ^
      const DeepCollectionEquality().hash(lastActivityTime) ^
      const DeepCollectionEquality().hash(typeHash) ^
      const DeepCollectionEquality().hash(codeHash);

  @JsonKey(ignore: true)
  @override
  $ContractAccountCopyWith<ContractAccount> get copyWith =>
      _$ContractAccountCopyWithImpl<ContractAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)
        userLocal,
    required TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)
        user,
    required TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)
        contract,
    required TResult Function(String address, num? balance, int? counter) empty,
  }) {
    return contract(
        kind,
        address,
        tzips,
        alias,
        balance,
        delegationLevel,
        delegationTime,
        numContracts,
        numDelegations,
        numOriginations,
        numTransactions,
        numReveals,
        numMigrations,
        firstActivity,
        firstActivityTime,
        lastActivity,
        lastActivityTime,
        typeHash,
        codeHash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
  }) {
    return contract?.call(
        kind,
        address,
        tzips,
        alias,
        balance,
        delegationLevel,
        delegationTime,
        numContracts,
        numDelegations,
        numOriginations,
        numTransactions,
        numReveals,
        numMigrations,
        firstActivity,
        firstActivityTime,
        lastActivity,
        lastActivityTime,
        typeHash,
        codeHash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
    required TResult orElse(),
  }) {
    if (contract != null) {
      return contract(
          kind,
          address,
          tzips,
          alias,
          balance,
          delegationLevel,
          delegationTime,
          numContracts,
          numDelegations,
          numOriginations,
          numTransactions,
          numReveals,
          numMigrations,
          firstActivity,
          firstActivityTime,
          lastActivity,
          lastActivityTime,
          typeHash,
          codeHash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAccountLocal value) userLocal,
    required TResult Function(UserAccount value) user,
    required TResult Function(ContractAccount value) contract,
    required TResult Function(EmptyAccount value) empty,
  }) {
    return contract(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
  }) {
    return contract?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
    required TResult orElse(),
  }) {
    if (contract != null) {
      return contract(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ContractAccountToJson(this)..['type'] = 'contract';
  }
}

abstract class ContractAccount implements Account {
  const factory ContractAccount(
      {required String kind,
      required String address,
      List<String>? tzips,
      String? alias,
      num? balance,
      int? delegationLevel,
      String? delegationTime,
      int? numContracts,
      int? numDelegations,
      int? numOriginations,
      int? numTransactions,
      int? numReveals,
      int? numMigrations,
      int? firstActivity,
      String? firstActivityTime,
      int? lastActivity,
      String? lastActivityTime,
      int? typeHash,
      int? codeHash}) = _$ContractAccount;

  factory ContractAccount.fromJson(Map<String, dynamic> json) =
      _$ContractAccount.fromJson;

  String get kind => throw _privateConstructorUsedError;
  @override
  String get address => throw _privateConstructorUsedError;
  List<String>? get tzips => throw _privateConstructorUsedError;
  String? get alias => throw _privateConstructorUsedError;
  num? get balance => throw _privateConstructorUsedError;
  int? get delegationLevel => throw _privateConstructorUsedError;
  String? get delegationTime => throw _privateConstructorUsedError;
  int? get numContracts => throw _privateConstructorUsedError;
  int? get numDelegations => throw _privateConstructorUsedError;
  int? get numOriginations => throw _privateConstructorUsedError;
  int? get numTransactions => throw _privateConstructorUsedError;
  int? get numReveals => throw _privateConstructorUsedError;
  int? get numMigrations => throw _privateConstructorUsedError;
  int? get firstActivity => throw _privateConstructorUsedError;
  String? get firstActivityTime => throw _privateConstructorUsedError;
  int? get lastActivity => throw _privateConstructorUsedError;
  String? get lastActivityTime => throw _privateConstructorUsedError;
  int? get typeHash => throw _privateConstructorUsedError;
  int? get codeHash => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ContractAccountCopyWith<ContractAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EmptyAccountCopyWith<$Res> implements $AccountCopyWith<$Res> {
  factory $EmptyAccountCopyWith(
          EmptyAccount value, $Res Function(EmptyAccount) then) =
      _$EmptyAccountCopyWithImpl<$Res>;
  @override
  $Res call({String address, num? balance, int? counter});
}

/// @nodoc
class _$EmptyAccountCopyWithImpl<$Res> extends _$AccountCopyWithImpl<$Res>
    implements $EmptyAccountCopyWith<$Res> {
  _$EmptyAccountCopyWithImpl(
      EmptyAccount _value, $Res Function(EmptyAccount) _then)
      : super(_value, (v) => _then(v as EmptyAccount));

  @override
  EmptyAccount get _value => super._value as EmptyAccount;

  @override
  $Res call({
    Object? address = freezed,
    Object? balance = freezed,
    Object? counter = freezed,
  }) {
    return _then(EmptyAccount(
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as num?,
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EmptyAccount with DiagnosticableTreeMixin implements EmptyAccount {
  const _$EmptyAccount({required this.address, this.balance = 0, this.counter});

  factory _$EmptyAccount.fromJson(Map<String, dynamic> json) =>
      _$$EmptyAccountFromJson(json);

  @override
  final String address;
  @JsonKey(defaultValue: 0)
  @override
  final num? balance;
  @override
  final int? counter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Account.empty(address: $address, balance: $balance, counter: $counter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Account.empty'))
      ..add(DiagnosticsProperty('address', address))
      ..add(DiagnosticsProperty('balance', balance))
      ..add(DiagnosticsProperty('counter', counter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is EmptyAccount &&
            (identical(other.address, address) ||
                const DeepCollectionEquality()
                    .equals(other.address, address)) &&
            (identical(other.balance, balance) ||
                const DeepCollectionEquality()
                    .equals(other.balance, balance)) &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality().equals(other.counter, counter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(address) ^
      const DeepCollectionEquality().hash(balance) ^
      const DeepCollectionEquality().hash(counter);

  @JsonKey(ignore: true)
  @override
  $EmptyAccountCopyWith<EmptyAccount> get copyWith =>
      _$EmptyAccountCopyWithImpl<EmptyAccount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)
        userLocal,
    required TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)
        user,
    required TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)
        contract,
    required TResult Function(String address, num? balance, int? counter) empty,
  }) {
    return empty(address, balance, counter);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
  }) {
    return empty?.call(address, balance, counter);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String type,
            String address,
            String secretKey,
            String privateKey,
            String mnemonic,
            num? balance,
            String prefferedNetwork,
            String? seedPhrase)?
        userLocal,
    TResult Function(
            String address,
            num balance,
            String? publicKey,
            String? alias,
            bool? revealed,
            int? counter,
            String? privateKey,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numActivations,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime)?
        user,
    TResult Function(
            String kind,
            String address,
            List<String>? tzips,
            String? alias,
            num? balance,
            int? delegationLevel,
            String? delegationTime,
            int? numContracts,
            int? numDelegations,
            int? numOriginations,
            int? numTransactions,
            int? numReveals,
            int? numMigrations,
            int? firstActivity,
            String? firstActivityTime,
            int? lastActivity,
            String? lastActivityTime,
            int? typeHash,
            int? codeHash)?
        contract,
    TResult Function(String address, num? balance, int? counter)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(address, balance, counter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UserAccountLocal value) userLocal,
    required TResult Function(UserAccount value) user,
    required TResult Function(ContractAccount value) contract,
    required TResult Function(EmptyAccount value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UserAccountLocal value)? userLocal,
    TResult Function(UserAccount value)? user,
    TResult Function(ContractAccount value)? contract,
    TResult Function(EmptyAccount value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EmptyAccountToJson(this)..['type'] = 'empty';
  }
}

abstract class EmptyAccount implements Account {
  const factory EmptyAccount(
      {required String address, num? balance, int? counter}) = _$EmptyAccount;

  factory EmptyAccount.fromJson(Map<String, dynamic> json) =
      _$EmptyAccount.fromJson;

  @override
  String get address => throw _privateConstructorUsedError;
  num? get balance => throw _privateConstructorUsedError;
  int? get counter => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $EmptyAccountCopyWith<EmptyAccount> get copyWith =>
      throw _privateConstructorUsedError;
}
