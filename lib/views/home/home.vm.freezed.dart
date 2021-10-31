// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home.vm.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _Loading loading() {
    return const _Loading();
  }

  _Data data(
      {UserAccountLocal? userAccountLocal,
      Account? userAccount,
      Tezos? tezos,
      List<Operation> operations = const [],
      bool isSending = false}) {
    return _Data(
      userAccountLocal: userAccountLocal,
      userAccount: userAccount,
      tezos: tezos,
      operations: operations,
      isSending: isSending,
    );
  }

  _Error error(String? error) {
    return _Error(
      error,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            UserAccountLocal? userAccountLocal,
            Account? userAccount,
            Tezos? tezos,
            List<Operation> operations,
            bool isSending)
        data,
    required TResult Function(String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserAccountLocal? userAccountLocal, Account? userAccount,
            Tezos? tezos, List<Operation> operations, bool isSending)?
        data,
    TResult Function(String? error)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserAccountLocal? userAccountLocal, Account? userAccount,
            Tezos? tezos, List<Operation> operations, bool isSending)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            UserAccountLocal? userAccountLocal,
            Account? userAccount,
            Tezos? tezos,
            List<Operation> operations,
            bool isSending)
        data,
    required TResult Function(String? error) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserAccountLocal? userAccountLocal, Account? userAccount,
            Tezos? tezos, List<Operation> operations, bool isSending)?
        data,
    TResult Function(String? error)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserAccountLocal? userAccountLocal, Account? userAccount,
            Tezos? tezos, List<Operation> operations, bool isSending)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements HomeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call(
      {UserAccountLocal? userAccountLocal,
      Account? userAccount,
      Tezos? tezos,
      List<Operation> operations,
      bool isSending});

  $AccountCopyWith<$Res>? get userAccount;
  $TezosCopyWith<$Res>? get tezos;
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? userAccountLocal = freezed,
    Object? userAccount = freezed,
    Object? tezos = freezed,
    Object? operations = freezed,
    Object? isSending = freezed,
  }) {
    return _then(_Data(
      userAccountLocal: userAccountLocal == freezed
          ? _value.userAccountLocal
          : userAccountLocal // ignore: cast_nullable_to_non_nullable
              as UserAccountLocal?,
      userAccount: userAccount == freezed
          ? _value.userAccount
          : userAccount // ignore: cast_nullable_to_non_nullable
              as Account?,
      tezos: tezos == freezed
          ? _value.tezos
          : tezos // ignore: cast_nullable_to_non_nullable
              as Tezos?,
      operations: operations == freezed
          ? _value.operations
          : operations // ignore: cast_nullable_to_non_nullable
              as List<Operation>,
      isSending: isSending == freezed
          ? _value.isSending
          : isSending // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $AccountCopyWith<$Res>? get userAccount {
    if (_value.userAccount == null) {
      return null;
    }

    return $AccountCopyWith<$Res>(_value.userAccount!, (value) {
      return _then(_value.copyWith(userAccount: value));
    });
  }

  @override
  $TezosCopyWith<$Res>? get tezos {
    if (_value.tezos == null) {
      return null;
    }

    return $TezosCopyWith<$Res>(_value.tezos!, (value) {
      return _then(_value.copyWith(tezos: value));
    });
  }
}

/// @nodoc

class _$_Data implements _Data {
  const _$_Data(
      {this.userAccountLocal,
      this.userAccount,
      this.tezos,
      this.operations = const [],
      this.isSending = false});

  @override // required
  final UserAccountLocal? userAccountLocal;
  @override
  final Account? userAccount;
  @override
  final Tezos? tezos;
  @JsonKey(defaultValue: const [])
  @override
  final List<Operation> operations;
  @JsonKey(defaultValue: false)
  @override
  final bool isSending;

  @override
  String toString() {
    return 'HomeState.data(userAccountLocal: $userAccountLocal, userAccount: $userAccount, tezos: $tezos, operations: $operations, isSending: $isSending)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Data &&
            (identical(other.userAccountLocal, userAccountLocal) ||
                const DeepCollectionEquality()
                    .equals(other.userAccountLocal, userAccountLocal)) &&
            (identical(other.userAccount, userAccount) ||
                const DeepCollectionEquality()
                    .equals(other.userAccount, userAccount)) &&
            (identical(other.tezos, tezos) ||
                const DeepCollectionEquality().equals(other.tezos, tezos)) &&
            (identical(other.operations, operations) ||
                const DeepCollectionEquality()
                    .equals(other.operations, operations)) &&
            (identical(other.isSending, isSending) ||
                const DeepCollectionEquality()
                    .equals(other.isSending, isSending)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(userAccountLocal) ^
      const DeepCollectionEquality().hash(userAccount) ^
      const DeepCollectionEquality().hash(tezos) ^
      const DeepCollectionEquality().hash(operations) ^
      const DeepCollectionEquality().hash(isSending);

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            UserAccountLocal? userAccountLocal,
            Account? userAccount,
            Tezos? tezos,
            List<Operation> operations,
            bool isSending)
        data,
    required TResult Function(String? error) error,
  }) {
    return data(userAccountLocal, userAccount, tezos, operations, isSending);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserAccountLocal? userAccountLocal, Account? userAccount,
            Tezos? tezos, List<Operation> operations, bool isSending)?
        data,
    TResult Function(String? error)? error,
  }) {
    return data?.call(
        userAccountLocal, userAccount, tezos, operations, isSending);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserAccountLocal? userAccountLocal, Account? userAccount,
            Tezos? tezos, List<Operation> operations, bool isSending)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(userAccountLocal, userAccount, tezos, operations, isSending);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _Data implements HomeState {
  const factory _Data(
      {UserAccountLocal? userAccountLocal,
      Account? userAccount,
      Tezos? tezos,
      List<Operation> operations,
      bool isSending}) = _$_Data;

// required
  UserAccountLocal? get userAccountLocal => throw _privateConstructorUsedError;
  Account? get userAccount => throw _privateConstructorUsedError;
  Tezos? get tezos => throw _privateConstructorUsedError;
  List<Operation> get operations => throw _privateConstructorUsedError;
  bool get isSending => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({String? error});
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_Error(
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.error);

  @override
  final String? error;

  @override
  String toString() {
    return 'HomeState.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            UserAccountLocal? userAccountLocal,
            Account? userAccount,
            Tezos? tezos,
            List<Operation> operations,
            bool isSending)
        data,
    required TResult Function(String? error) error,
  }) {
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserAccountLocal? userAccountLocal, Account? userAccount,
            Tezos? tezos, List<Operation> operations, bool isSending)?
        data,
    TResult Function(String? error)? error,
  }) {
    return error?.call(this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(UserAccountLocal? userAccountLocal, Account? userAccount,
            Tezos? tezos, List<Operation> operations, bool isSending)?
        data,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_Data value) data,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_Data value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements HomeState {
  const factory _Error(String? error) = _$_Error;

  String? get error => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$ErrorCopyWith<_Error> get copyWith => throw _privateConstructorUsedError;
}
