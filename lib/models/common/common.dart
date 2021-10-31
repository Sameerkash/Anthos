import 'package:freezed_annotation/freezed_annotation.dart';
part 'common.freezed.dart';
part 'common.g.dart';

@freezed
class Metadata with _$Metadata {
  const factory Metadata({
    final String? address,
    final String? kind,
    final String? owner,
    final String? alias,
    final String? description,
    final String? logo,
    final String? site,
    final String? support,
    final String? email,
    final String? twitter,
    final String? telegram,
    final String? discord,
    final String? reddit,
    final String? slack,
    final String? riot,
    final String? github,
    final String? instagram,
    final String? facebook,
  }) = _Metadata;

  factory Metadata.fromJson(Map<String, Object?> json) =>
      _$MetadataFromJson(json);
}

@freezed
class Sender with _$Sender {
  const factory Sender({
    required final String address,
  }) = _Sender;

  factory Sender.fromJson(Map<String, Object?> json) => _$SenderFromJson(json);
}

@freezed
class Target with _$Target {
  const factory Target({
    required final String address,
    final String? alias,
  }) = _Target;

  factory Target.fromJson(Map<String, Object?> json) => _$TargetFromJson(json);
}

@freezed
class Parameter with _$Parameter {
  const factory Parameter({
    required final String entrypoint,
    required final Value value,
  }) = _Parameter;

  factory Parameter.fromJson(Map<String, Object?> json) =>
      _$ParameterFromJson(json);
}

@freezed
class Value with _$Value {
  const factory Value({
    // ignore: invalid_annotation_target
    @JsonKey(name: 'R') final String? r,
  }) = _Value;

  factory Value.fromJson(Map<String, Object?> json) => _$ValueFromJson(json);
}
