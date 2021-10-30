// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'operation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TransactionOperation _$$_TransactionOperationFromJson(
        Map<String, dynamic> json) =>
    _$_TransactionOperation(
      id: json['id'] as int,
      level: json['level'] as int,
      timestamp: json['timestamp'] as String,
      block: json['block'] as String,
      hash: json['hash'] as String,
      sender: Sender.fromJson(json['sender'] as Map<String, dynamic>),
      counter: json['counter'] as int?,
      gasLimit: json['gasLimit'] as int?,
      gasUsed: json['gasUsed'] as int?,
      storageLimit: json['storageLimit'] as int?,
      storageUsed: json['storageUsed'] as int?,
      bakerFee: json['bakerFee'] as int?,
      storageFee: json['storageFee'] as int?,
      allocationFee: json['allocationFee'] as int?,
      amount: json['amount'] as int?,
      status: json['status'] as String?,
      hasInternals: json['hasInternals'] as bool?,
      parameters: json['parameters'] as String?,
    );

Map<String, dynamic> _$$_TransactionOperationToJson(
        _$_TransactionOperation instance) =>
    <String, dynamic>{
      'id': instance.id,
      'level': instance.level,
      'timestamp': instance.timestamp,
      'block': instance.block,
      'hash': instance.hash,
      'sender': instance.sender,
      'counter': instance.counter,
      'gasLimit': instance.gasLimit,
      'gasUsed': instance.gasUsed,
      'storageLimit': instance.storageLimit,
      'storageUsed': instance.storageUsed,
      'bakerFee': instance.bakerFee,
      'storageFee': instance.storageFee,
      'allocationFee': instance.allocationFee,
      'amount': instance.amount,
      'status': instance.status,
      'hasInternals': instance.hasInternals,
      'parameters': instance.parameters,
    };
