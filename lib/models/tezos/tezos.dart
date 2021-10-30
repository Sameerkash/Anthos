// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
part 'tezos.g.dart';
part 'tezos.freezed.dart';

@freezed
class Tezos with _$Tezos {
  const factory Tezos({
    final String? symbol,
    required final String name,
    required final String id,
    @JsonKey(name: 'current_price') required final double currentPrice,
    @JsonKey(name: 'market_cap') required final double marketCap,
    @JsonKey(name: 'total_volume') required final double totalVolume,
    @JsonKey(name: 'price_change_percentage_24h')
        final double? priceChangePercentage24h,
    @JsonKey(name: 'high_24h') final double? high24h,
    @JsonKey(name: 'low_24h') final double? low24h,
  }) = _Tezos;

  factory Tezos.fromJson(Map<String, dynamic> json) => _$TezosFromJson(json);
}
