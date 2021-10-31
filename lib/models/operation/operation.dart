import '../common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'operation.g.dart';
part 'operation.freezed.dart';

@Freezed(unionKey: 'type', unionValueCase: FreezedUnionCase.pascal)
class Operation with _$Operation {
  const factory Operation.transaction({
    required final int id,
    required final int level,
    required final String timestamp,
    required final String block,
    required final String hash,
    required final Sender sender,
    final Target? target,
    final int? counter,
    final int? gasLimit,
    final int? gasUsed,
    final int? storageLimit,
    final int? storageUsed,
    final int? bakerFee,
    final int? storageFee,
    final int? allocationFee,
    final int? amount,
    final String? status,
    final bool? hasInternals,
    final String? parameters,
  }) = TransactionOperation;

  // const factory Operation.reveal({
  //   required final int id,
  //   required final int level,
  //   required final String timestamp,
  //   required final String block,
  //   required final String hash,
  //   required final Sender sender,
  //   final String? status,
  //   final int? counter,
  //   final int? gasLimit,
  //   final int? gasUsed,
  // }) = RevealOperation;
  factory Operation.fromJson(Map<String, dynamic> json) =>
      _$OperationFromJson(json);
}
