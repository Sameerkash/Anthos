// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tezos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Tezos _$$_TezosFromJson(Map<String, dynamic> json) => _$_Tezos(
      symbol: json['symbol'] as String?,
      name: json['name'] as String,
      id: json['id'] as String,
      currentPrice: (json['current_price'] as num).toDouble(),
      marketCap: (json['market_cap'] as num).toDouble(),
      totalVolume: (json['total_volume'] as num).toDouble(),
      priceChangePercentage24h:
          (json['price_change_percentage_24h'] as num?)?.toDouble(),
      high24h: (json['high_24h'] as num?)?.toDouble(),
      low24h: (json['low_24h'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$_TezosToJson(_$_Tezos instance) => <String, dynamic>{
      'symbol': instance.symbol,
      'name': instance.name,
      'id': instance.id,
      'current_price': instance.currentPrice,
      'market_cap': instance.marketCap,
      'total_volume': instance.totalVolume,
      'price_change_percentage_24h': instance.priceChangePercentage24h,
      'high_24h': instance.high24h,
      'low_24h': instance.low24h,
    };
