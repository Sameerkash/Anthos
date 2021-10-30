// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tezos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Tezos _$TezosFromJson(Map<String, dynamic> json) {
  return _Tezos.fromJson(json);
}

/// @nodoc
class _$TezosTearOff {
  const _$TezosTearOff();

  _Tezos call(
      {String? symbol,
      required String name,
      required String id,
      @JsonKey(name: 'current_price')
          required double currentPrice,
      @JsonKey(name: 'market_cap')
          required double marketCap,
      @JsonKey(name: 'total_volume')
          required double totalVolume,
      @JsonKey(name: 'price_change_percentage_24h')
          double? priceChangePercentage24h,
      @JsonKey(name: 'high_24h')
          double? high24h,
      @JsonKey(name: 'low_24h')
          double? low24h}) {
    return _Tezos(
      symbol: symbol,
      name: name,
      id: id,
      currentPrice: currentPrice,
      marketCap: marketCap,
      totalVolume: totalVolume,
      priceChangePercentage24h: priceChangePercentage24h,
      high24h: high24h,
      low24h: low24h,
    );
  }

  Tezos fromJson(Map<String, Object> json) {
    return Tezos.fromJson(json);
  }
}

/// @nodoc
const $Tezos = _$TezosTearOff();

/// @nodoc
mixin _$Tezos {
  String? get symbol => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_price')
  double get currentPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'market_cap')
  double get marketCap => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_volume')
  double get totalVolume => throw _privateConstructorUsedError;
  @JsonKey(name: 'price_change_percentage_24h')
  double? get priceChangePercentage24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'high_24h')
  double? get high24h => throw _privateConstructorUsedError;
  @JsonKey(name: 'low_24h')
  double? get low24h => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TezosCopyWith<Tezos> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TezosCopyWith<$Res> {
  factory $TezosCopyWith(Tezos value, $Res Function(Tezos) then) =
      _$TezosCopyWithImpl<$Res>;
  $Res call(
      {String? symbol,
      String name,
      String id,
      @JsonKey(name: 'current_price')
          double currentPrice,
      @JsonKey(name: 'market_cap')
          double marketCap,
      @JsonKey(name: 'total_volume')
          double totalVolume,
      @JsonKey(name: 'price_change_percentage_24h')
          double? priceChangePercentage24h,
      @JsonKey(name: 'high_24h')
          double? high24h,
      @JsonKey(name: 'low_24h')
          double? low24h});
}

/// @nodoc
class _$TezosCopyWithImpl<$Res> implements $TezosCopyWith<$Res> {
  _$TezosCopyWithImpl(this._value, this._then);

  final Tezos _value;
  // ignore: unused_field
  final $Res Function(Tezos) _then;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? currentPrice = freezed,
    Object? marketCap = freezed,
    Object? totalVolume = freezed,
    Object? priceChangePercentage24h = freezed,
    Object? high24h = freezed,
    Object? low24h = freezed,
  }) {
    return _then(_value.copyWith(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: marketCap == freezed
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      totalVolume: totalVolume == freezed
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage24h: priceChangePercentage24h == freezed
          ? _value.priceChangePercentage24h
          : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double?,
      high24h: high24h == freezed
          ? _value.high24h
          : high24h // ignore: cast_nullable_to_non_nullable
              as double?,
      low24h: low24h == freezed
          ? _value.low24h
          : low24h // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
abstract class _$TezosCopyWith<$Res> implements $TezosCopyWith<$Res> {
  factory _$TezosCopyWith(_Tezos value, $Res Function(_Tezos) then) =
      __$TezosCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? symbol,
      String name,
      String id,
      @JsonKey(name: 'current_price')
          double currentPrice,
      @JsonKey(name: 'market_cap')
          double marketCap,
      @JsonKey(name: 'total_volume')
          double totalVolume,
      @JsonKey(name: 'price_change_percentage_24h')
          double? priceChangePercentage24h,
      @JsonKey(name: 'high_24h')
          double? high24h,
      @JsonKey(name: 'low_24h')
          double? low24h});
}

/// @nodoc
class __$TezosCopyWithImpl<$Res> extends _$TezosCopyWithImpl<$Res>
    implements _$TezosCopyWith<$Res> {
  __$TezosCopyWithImpl(_Tezos _value, $Res Function(_Tezos) _then)
      : super(_value, (v) => _then(v as _Tezos));

  @override
  _Tezos get _value => super._value as _Tezos;

  @override
  $Res call({
    Object? symbol = freezed,
    Object? name = freezed,
    Object? id = freezed,
    Object? currentPrice = freezed,
    Object? marketCap = freezed,
    Object? totalVolume = freezed,
    Object? priceChangePercentage24h = freezed,
    Object? high24h = freezed,
    Object? low24h = freezed,
  }) {
    return _then(_Tezos(
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      currentPrice: currentPrice == freezed
          ? _value.currentPrice
          : currentPrice // ignore: cast_nullable_to_non_nullable
              as double,
      marketCap: marketCap == freezed
          ? _value.marketCap
          : marketCap // ignore: cast_nullable_to_non_nullable
              as double,
      totalVolume: totalVolume == freezed
          ? _value.totalVolume
          : totalVolume // ignore: cast_nullable_to_non_nullable
              as double,
      priceChangePercentage24h: priceChangePercentage24h == freezed
          ? _value.priceChangePercentage24h
          : priceChangePercentage24h // ignore: cast_nullable_to_non_nullable
              as double?,
      high24h: high24h == freezed
          ? _value.high24h
          : high24h // ignore: cast_nullable_to_non_nullable
              as double?,
      low24h: low24h == freezed
          ? _value.low24h
          : low24h // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Tezos implements _Tezos {
  const _$_Tezos(
      {this.symbol,
      required this.name,
      required this.id,
      @JsonKey(name: 'current_price')
          required this.currentPrice,
      @JsonKey(name: 'market_cap')
          required this.marketCap,
      @JsonKey(name: 'total_volume')
          required this.totalVolume,
      @JsonKey(name: 'price_change_percentage_24h')
          this.priceChangePercentage24h,
      @JsonKey(name: 'high_24h')
          this.high24h,
      @JsonKey(name: 'low_24h')
          this.low24h});

  factory _$_Tezos.fromJson(Map<String, dynamic> json) =>
      _$$_TezosFromJson(json);

  @override
  final String? symbol;
  @override
  final String name;
  @override
  final String id;
  @override
  @JsonKey(name: 'current_price')
  final double currentPrice;
  @override
  @JsonKey(name: 'market_cap')
  final double marketCap;
  @override
  @JsonKey(name: 'total_volume')
  final double totalVolume;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  final double? priceChangePercentage24h;
  @override
  @JsonKey(name: 'high_24h')
  final double? high24h;
  @override
  @JsonKey(name: 'low_24h')
  final double? low24h;

  @override
  String toString() {
    return 'Tezos(symbol: $symbol, name: $name, id: $id, currentPrice: $currentPrice, marketCap: $marketCap, totalVolume: $totalVolume, priceChangePercentage24h: $priceChangePercentage24h, high24h: $high24h, low24h: $low24h)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Tezos &&
            (identical(other.symbol, symbol) ||
                const DeepCollectionEquality().equals(other.symbol, symbol)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.currentPrice, currentPrice) ||
                const DeepCollectionEquality()
                    .equals(other.currentPrice, currentPrice)) &&
            (identical(other.marketCap, marketCap) ||
                const DeepCollectionEquality()
                    .equals(other.marketCap, marketCap)) &&
            (identical(other.totalVolume, totalVolume) ||
                const DeepCollectionEquality()
                    .equals(other.totalVolume, totalVolume)) &&
            (identical(
                    other.priceChangePercentage24h, priceChangePercentage24h) ||
                const DeepCollectionEquality().equals(
                    other.priceChangePercentage24h,
                    priceChangePercentage24h)) &&
            (identical(other.high24h, high24h) ||
                const DeepCollectionEquality()
                    .equals(other.high24h, high24h)) &&
            (identical(other.low24h, low24h) ||
                const DeepCollectionEquality().equals(other.low24h, low24h)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(symbol) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(currentPrice) ^
      const DeepCollectionEquality().hash(marketCap) ^
      const DeepCollectionEquality().hash(totalVolume) ^
      const DeepCollectionEquality().hash(priceChangePercentage24h) ^
      const DeepCollectionEquality().hash(high24h) ^
      const DeepCollectionEquality().hash(low24h);

  @JsonKey(ignore: true)
  @override
  _$TezosCopyWith<_Tezos> get copyWith =>
      __$TezosCopyWithImpl<_Tezos>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TezosToJson(this);
  }
}

abstract class _Tezos implements Tezos {
  const factory _Tezos(
      {String? symbol,
      required String name,
      required String id,
      @JsonKey(name: 'current_price')
          required double currentPrice,
      @JsonKey(name: 'market_cap')
          required double marketCap,
      @JsonKey(name: 'total_volume')
          required double totalVolume,
      @JsonKey(name: 'price_change_percentage_24h')
          double? priceChangePercentage24h,
      @JsonKey(name: 'high_24h')
          double? high24h,
      @JsonKey(name: 'low_24h')
          double? low24h}) = _$_Tezos;

  factory _Tezos.fromJson(Map<String, dynamic> json) = _$_Tezos.fromJson;

  @override
  String? get symbol => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'current_price')
  double get currentPrice => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'market_cap')
  double get marketCap => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'total_volume')
  double get totalVolume => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'price_change_percentage_24h')
  double? get priceChangePercentage24h => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'high_24h')
  double? get high24h => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'low_24h')
  double? get low24h => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TezosCopyWith<_Tezos> get copyWith => throw _privateConstructorUsedError;
}
