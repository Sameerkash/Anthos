// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'operation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Operation _$OperationFromJson(Map<String, dynamic> json) {
  return _TransactionOperation.fromJson(json);
}

/// @nodoc
class _$OperationTearOff {
  const _$OperationTearOff();

  _TransactionOperation transaction(
      {required int id,
      required int level,
      required String timestamp,
      required String block,
      required String hash,
      required Sender sender,
      int? counter,
      int? gasLimit,
      int? gasUsed,
      int? storageLimit,
      int? storageUsed,
      int? bakerFee,
      int? storageFee,
      int? allocationFee,
      int? amount,
      String? status,
      bool? hasInternals,
      String? parameters}) {
    return _TransactionOperation(
      id: id,
      level: level,
      timestamp: timestamp,
      block: block,
      hash: hash,
      sender: sender,
      counter: counter,
      gasLimit: gasLimit,
      gasUsed: gasUsed,
      storageLimit: storageLimit,
      storageUsed: storageUsed,
      bakerFee: bakerFee,
      storageFee: storageFee,
      allocationFee: allocationFee,
      amount: amount,
      status: status,
      hasInternals: hasInternals,
      parameters: parameters,
    );
  }

  Operation fromJson(Map<String, Object> json) {
    return Operation.fromJson(json);
  }
}

/// @nodoc
const $Operation = _$OperationTearOff();

/// @nodoc
mixin _$Operation {
  int get id => throw _privateConstructorUsedError;
  int get level => throw _privateConstructorUsedError;
  String get timestamp => throw _privateConstructorUsedError;
  String get block => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;
  Sender get sender => throw _privateConstructorUsedError;
  int? get counter => throw _privateConstructorUsedError;
  int? get gasLimit => throw _privateConstructorUsedError;
  int? get gasUsed => throw _privateConstructorUsedError;
  int? get storageLimit => throw _privateConstructorUsedError;
  int? get storageUsed => throw _privateConstructorUsedError;
  int? get bakerFee => throw _privateConstructorUsedError;
  int? get storageFee => throw _privateConstructorUsedError;
  int? get allocationFee => throw _privateConstructorUsedError;
  int? get amount => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get hasInternals => throw _privateConstructorUsedError;
  String? get parameters => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            int level,
            String timestamp,
            String block,
            String hash,
            Sender sender,
            int? counter,
            int? gasLimit,
            int? gasUsed,
            int? storageLimit,
            int? storageUsed,
            int? bakerFee,
            int? storageFee,
            int? allocationFee,
            int? amount,
            String? status,
            bool? hasInternals,
            String? parameters)
        transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int id,
            int level,
            String timestamp,
            String block,
            String hash,
            Sender sender,
            int? counter,
            int? gasLimit,
            int? gasUsed,
            int? storageLimit,
            int? storageUsed,
            int? bakerFee,
            int? storageFee,
            int? allocationFee,
            int? amount,
            String? status,
            bool? hasInternals,
            String? parameters)?
        transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            int level,
            String timestamp,
            String block,
            String hash,
            Sender sender,
            int? counter,
            int? gasLimit,
            int? gasUsed,
            int? storageLimit,
            int? storageUsed,
            int? bakerFee,
            int? storageFee,
            int? allocationFee,
            int? amount,
            String? status,
            bool? hasInternals,
            String? parameters)?
        transaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionOperation value) transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransactionOperation value)? transaction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionOperation value)? transaction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OperationCopyWith<Operation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OperationCopyWith<$Res> {
  factory $OperationCopyWith(Operation value, $Res Function(Operation) then) =
      _$OperationCopyWithImpl<$Res>;
  $Res call(
      {int id,
      int level,
      String timestamp,
      String block,
      String hash,
      Sender sender,
      int? counter,
      int? gasLimit,
      int? gasUsed,
      int? storageLimit,
      int? storageUsed,
      int? bakerFee,
      int? storageFee,
      int? allocationFee,
      int? amount,
      String? status,
      bool? hasInternals,
      String? parameters});

  $SenderCopyWith<$Res> get sender;
}

/// @nodoc
class _$OperationCopyWithImpl<$Res> implements $OperationCopyWith<$Res> {
  _$OperationCopyWithImpl(this._value, this._then);

  final Operation _value;
  // ignore: unused_field
  final $Res Function(Operation) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? level = freezed,
    Object? timestamp = freezed,
    Object? block = freezed,
    Object? hash = freezed,
    Object? sender = freezed,
    Object? counter = freezed,
    Object? gasLimit = freezed,
    Object? gasUsed = freezed,
    Object? storageLimit = freezed,
    Object? storageUsed = freezed,
    Object? bakerFee = freezed,
    Object? storageFee = freezed,
    Object? allocationFee = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? hasInternals = freezed,
    Object? parameters = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      block: block == freezed
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int?,
      gasLimit: gasLimit == freezed
          ? _value.gasLimit
          : gasLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      gasUsed: gasUsed == freezed
          ? _value.gasUsed
          : gasUsed // ignore: cast_nullable_to_non_nullable
              as int?,
      storageLimit: storageLimit == freezed
          ? _value.storageLimit
          : storageLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      storageUsed: storageUsed == freezed
          ? _value.storageUsed
          : storageUsed // ignore: cast_nullable_to_non_nullable
              as int?,
      bakerFee: bakerFee == freezed
          ? _value.bakerFee
          : bakerFee // ignore: cast_nullable_to_non_nullable
              as int?,
      storageFee: storageFee == freezed
          ? _value.storageFee
          : storageFee // ignore: cast_nullable_to_non_nullable
              as int?,
      allocationFee: allocationFee == freezed
          ? _value.allocationFee
          : allocationFee // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInternals: hasInternals == freezed
          ? _value.hasInternals
          : hasInternals // ignore: cast_nullable_to_non_nullable
              as bool?,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $SenderCopyWith<$Res> get sender {
    return $SenderCopyWith<$Res>(_value.sender, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$TransactionOperationCopyWith<$Res>
    implements $OperationCopyWith<$Res> {
  factory _$TransactionOperationCopyWith(_TransactionOperation value,
          $Res Function(_TransactionOperation) then) =
      __$TransactionOperationCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      int level,
      String timestamp,
      String block,
      String hash,
      Sender sender,
      int? counter,
      int? gasLimit,
      int? gasUsed,
      int? storageLimit,
      int? storageUsed,
      int? bakerFee,
      int? storageFee,
      int? allocationFee,
      int? amount,
      String? status,
      bool? hasInternals,
      String? parameters});

  @override
  $SenderCopyWith<$Res> get sender;
}

/// @nodoc
class __$TransactionOperationCopyWithImpl<$Res>
    extends _$OperationCopyWithImpl<$Res>
    implements _$TransactionOperationCopyWith<$Res> {
  __$TransactionOperationCopyWithImpl(
      _TransactionOperation _value, $Res Function(_TransactionOperation) _then)
      : super(_value, (v) => _then(v as _TransactionOperation));

  @override
  _TransactionOperation get _value => super._value as _TransactionOperation;

  @override
  $Res call({
    Object? id = freezed,
    Object? level = freezed,
    Object? timestamp = freezed,
    Object? block = freezed,
    Object? hash = freezed,
    Object? sender = freezed,
    Object? counter = freezed,
    Object? gasLimit = freezed,
    Object? gasUsed = freezed,
    Object? storageLimit = freezed,
    Object? storageUsed = freezed,
    Object? bakerFee = freezed,
    Object? storageFee = freezed,
    Object? allocationFee = freezed,
    Object? amount = freezed,
    Object? status = freezed,
    Object? hasInternals = freezed,
    Object? parameters = freezed,
  }) {
    return _then(_TransactionOperation(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as String,
      block: block == freezed
          ? _value.block
          : block // ignore: cast_nullable_to_non_nullable
              as String,
      hash: hash == freezed
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Sender,
      counter: counter == freezed
          ? _value.counter
          : counter // ignore: cast_nullable_to_non_nullable
              as int?,
      gasLimit: gasLimit == freezed
          ? _value.gasLimit
          : gasLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      gasUsed: gasUsed == freezed
          ? _value.gasUsed
          : gasUsed // ignore: cast_nullable_to_non_nullable
              as int?,
      storageLimit: storageLimit == freezed
          ? _value.storageLimit
          : storageLimit // ignore: cast_nullable_to_non_nullable
              as int?,
      storageUsed: storageUsed == freezed
          ? _value.storageUsed
          : storageUsed // ignore: cast_nullable_to_non_nullable
              as int?,
      bakerFee: bakerFee == freezed
          ? _value.bakerFee
          : bakerFee // ignore: cast_nullable_to_non_nullable
              as int?,
      storageFee: storageFee == freezed
          ? _value.storageFee
          : storageFee // ignore: cast_nullable_to_non_nullable
              as int?,
      allocationFee: allocationFee == freezed
          ? _value.allocationFee
          : allocationFee // ignore: cast_nullable_to_non_nullable
              as int?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      hasInternals: hasInternals == freezed
          ? _value.hasInternals
          : hasInternals // ignore: cast_nullable_to_non_nullable
              as bool?,
      parameters: parameters == freezed
          ? _value.parameters
          : parameters // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionOperation implements _TransactionOperation {
  const _$_TransactionOperation(
      {required this.id,
      required this.level,
      required this.timestamp,
      required this.block,
      required this.hash,
      required this.sender,
      this.counter,
      this.gasLimit,
      this.gasUsed,
      this.storageLimit,
      this.storageUsed,
      this.bakerFee,
      this.storageFee,
      this.allocationFee,
      this.amount,
      this.status,
      this.hasInternals,
      this.parameters});

  factory _$_TransactionOperation.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionOperationFromJson(json);

  @override
  final int id;
  @override
  final int level;
  @override
  final String timestamp;
  @override
  final String block;
  @override
  final String hash;
  @override
  final Sender sender;
  @override
  final int? counter;
  @override
  final int? gasLimit;
  @override
  final int? gasUsed;
  @override
  final int? storageLimit;
  @override
  final int? storageUsed;
  @override
  final int? bakerFee;
  @override
  final int? storageFee;
  @override
  final int? allocationFee;
  @override
  final int? amount;
  @override
  final String? status;
  @override
  final bool? hasInternals;
  @override
  final String? parameters;

  @override
  String toString() {
    return 'Operation.transaction(id: $id, level: $level, timestamp: $timestamp, block: $block, hash: $hash, sender: $sender, counter: $counter, gasLimit: $gasLimit, gasUsed: $gasUsed, storageLimit: $storageLimit, storageUsed: $storageUsed, bakerFee: $bakerFee, storageFee: $storageFee, allocationFee: $allocationFee, amount: $amount, status: $status, hasInternals: $hasInternals, parameters: $parameters)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TransactionOperation &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.level, level) ||
                const DeepCollectionEquality().equals(other.level, level)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.block, block) ||
                const DeepCollectionEquality().equals(other.block, block)) &&
            (identical(other.hash, hash) ||
                const DeepCollectionEquality().equals(other.hash, hash)) &&
            (identical(other.sender, sender) ||
                const DeepCollectionEquality().equals(other.sender, sender)) &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality()
                    .equals(other.counter, counter)) &&
            (identical(other.gasLimit, gasLimit) ||
                const DeepCollectionEquality()
                    .equals(other.gasLimit, gasLimit)) &&
            (identical(other.gasUsed, gasUsed) ||
                const DeepCollectionEquality()
                    .equals(other.gasUsed, gasUsed)) &&
            (identical(other.storageLimit, storageLimit) ||
                const DeepCollectionEquality()
                    .equals(other.storageLimit, storageLimit)) &&
            (identical(other.storageUsed, storageUsed) ||
                const DeepCollectionEquality()
                    .equals(other.storageUsed, storageUsed)) &&
            (identical(other.bakerFee, bakerFee) ||
                const DeepCollectionEquality()
                    .equals(other.bakerFee, bakerFee)) &&
            (identical(other.storageFee, storageFee) ||
                const DeepCollectionEquality()
                    .equals(other.storageFee, storageFee)) &&
            (identical(other.allocationFee, allocationFee) ||
                const DeepCollectionEquality()
                    .equals(other.allocationFee, allocationFee)) &&
            (identical(other.amount, amount) ||
                const DeepCollectionEquality().equals(other.amount, amount)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.hasInternals, hasInternals) ||
                const DeepCollectionEquality()
                    .equals(other.hasInternals, hasInternals)) &&
            (identical(other.parameters, parameters) ||
                const DeepCollectionEquality()
                    .equals(other.parameters, parameters)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(level) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(block) ^
      const DeepCollectionEquality().hash(hash) ^
      const DeepCollectionEquality().hash(sender) ^
      const DeepCollectionEquality().hash(counter) ^
      const DeepCollectionEquality().hash(gasLimit) ^
      const DeepCollectionEquality().hash(gasUsed) ^
      const DeepCollectionEquality().hash(storageLimit) ^
      const DeepCollectionEquality().hash(storageUsed) ^
      const DeepCollectionEquality().hash(bakerFee) ^
      const DeepCollectionEquality().hash(storageFee) ^
      const DeepCollectionEquality().hash(allocationFee) ^
      const DeepCollectionEquality().hash(amount) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(hasInternals) ^
      const DeepCollectionEquality().hash(parameters);

  @JsonKey(ignore: true)
  @override
  _$TransactionOperationCopyWith<_TransactionOperation> get copyWith =>
      __$TransactionOperationCopyWithImpl<_TransactionOperation>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int id,
            int level,
            String timestamp,
            String block,
            String hash,
            Sender sender,
            int? counter,
            int? gasLimit,
            int? gasUsed,
            int? storageLimit,
            int? storageUsed,
            int? bakerFee,
            int? storageFee,
            int? allocationFee,
            int? amount,
            String? status,
            bool? hasInternals,
            String? parameters)
        transaction,
  }) {
    return transaction(
        id,
        level,
        timestamp,
        block,
        hash,
        sender,
        counter,
        gasLimit,
        gasUsed,
        storageLimit,
        storageUsed,
        bakerFee,
        storageFee,
        allocationFee,
        amount,
        status,
        hasInternals,
        parameters);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            int id,
            int level,
            String timestamp,
            String block,
            String hash,
            Sender sender,
            int? counter,
            int? gasLimit,
            int? gasUsed,
            int? storageLimit,
            int? storageUsed,
            int? bakerFee,
            int? storageFee,
            int? allocationFee,
            int? amount,
            String? status,
            bool? hasInternals,
            String? parameters)?
        transaction,
  }) {
    return transaction?.call(
        id,
        level,
        timestamp,
        block,
        hash,
        sender,
        counter,
        gasLimit,
        gasUsed,
        storageLimit,
        storageUsed,
        bakerFee,
        storageFee,
        allocationFee,
        amount,
        status,
        hasInternals,
        parameters);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int id,
            int level,
            String timestamp,
            String block,
            String hash,
            Sender sender,
            int? counter,
            int? gasLimit,
            int? gasUsed,
            int? storageLimit,
            int? storageUsed,
            int? bakerFee,
            int? storageFee,
            int? allocationFee,
            int? amount,
            String? status,
            bool? hasInternals,
            String? parameters)?
        transaction,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(
          id,
          level,
          timestamp,
          block,
          hash,
          sender,
          counter,
          gasLimit,
          gasUsed,
          storageLimit,
          storageUsed,
          bakerFee,
          storageFee,
          allocationFee,
          amount,
          status,
          hasInternals,
          parameters);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_TransactionOperation value) transaction,
  }) {
    return transaction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_TransactionOperation value)? transaction,
  }) {
    return transaction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_TransactionOperation value)? transaction,
    required TResult orElse(),
  }) {
    if (transaction != null) {
      return transaction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionOperationToJson(this);
  }
}

abstract class _TransactionOperation implements Operation {
  const factory _TransactionOperation(
      {required int id,
      required int level,
      required String timestamp,
      required String block,
      required String hash,
      required Sender sender,
      int? counter,
      int? gasLimit,
      int? gasUsed,
      int? storageLimit,
      int? storageUsed,
      int? bakerFee,
      int? storageFee,
      int? allocationFee,
      int? amount,
      String? status,
      bool? hasInternals,
      String? parameters}) = _$_TransactionOperation;

  factory _TransactionOperation.fromJson(Map<String, dynamic> json) =
      _$_TransactionOperation.fromJson;

  @override
  int get id => throw _privateConstructorUsedError;
  @override
  int get level => throw _privateConstructorUsedError;
  @override
  String get timestamp => throw _privateConstructorUsedError;
  @override
  String get block => throw _privateConstructorUsedError;
  @override
  String get hash => throw _privateConstructorUsedError;
  @override
  Sender get sender => throw _privateConstructorUsedError;
  @override
  int? get counter => throw _privateConstructorUsedError;
  @override
  int? get gasLimit => throw _privateConstructorUsedError;
  @override
  int? get gasUsed => throw _privateConstructorUsedError;
  @override
  int? get storageLimit => throw _privateConstructorUsedError;
  @override
  int? get storageUsed => throw _privateConstructorUsedError;
  @override
  int? get bakerFee => throw _privateConstructorUsedError;
  @override
  int? get storageFee => throw _privateConstructorUsedError;
  @override
  int? get allocationFee => throw _privateConstructorUsedError;
  @override
  int? get amount => throw _privateConstructorUsedError;
  @override
  String? get status => throw _privateConstructorUsedError;
  @override
  bool? get hasInternals => throw _privateConstructorUsedError;
  @override
  String? get parameters => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TransactionOperationCopyWith<_TransactionOperation> get copyWith =>
      throw _privateConstructorUsedError;
}
