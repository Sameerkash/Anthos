// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'common.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Metadata _$$_MetadataFromJson(Map<String, dynamic> json) => _$_Metadata(
      address: json['address'] as String?,
      kind: json['kind'] as String?,
      owner: json['owner'] as String?,
      alias: json['alias'] as String?,
      description: json['description'] as String?,
      logo: json['logo'] as String?,
      site: json['site'] as String?,
      support: json['support'] as String?,
      email: json['email'] as String?,
      twitter: json['twitter'] as String?,
      telegram: json['telegram'] as String?,
      discord: json['discord'] as String?,
      reddit: json['reddit'] as String?,
      slack: json['slack'] as String?,
      riot: json['riot'] as String?,
      github: json['github'] as String?,
      instagram: json['instagram'] as String?,
      facebook: json['facebook'] as String?,
    );

Map<String, dynamic> _$$_MetadataToJson(_$_Metadata instance) =>
    <String, dynamic>{
      'address': instance.address,
      'kind': instance.kind,
      'owner': instance.owner,
      'alias': instance.alias,
      'description': instance.description,
      'logo': instance.logo,
      'site': instance.site,
      'support': instance.support,
      'email': instance.email,
      'twitter': instance.twitter,
      'telegram': instance.telegram,
      'discord': instance.discord,
      'reddit': instance.reddit,
      'slack': instance.slack,
      'riot': instance.riot,
      'github': instance.github,
      'instagram': instance.instagram,
      'facebook': instance.facebook,
    };

_$_Sender _$$_SenderFromJson(Map<String, dynamic> json) => _$_Sender(
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_SenderToJson(_$_Sender instance) => <String, dynamic>{
      'address': instance.address,
    };

_$_Target _$$_TargetFromJson(Map<String, dynamic> json) => _$_Target(
      alias: json['alias'] as String,
      address: json['address'] as String,
    );

Map<String, dynamic> _$$_TargetToJson(_$_Target instance) => <String, dynamic>{
      'alias': instance.alias,
      'address': instance.address,
    };

_$_Parameter _$$_ParameterFromJson(Map<String, dynamic> json) => _$_Parameter(
      entrypoint: json['entrypoint'] as String,
      value: Value.fromJson(json['value'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ParameterToJson(_$_Parameter instance) =>
    <String, dynamic>{
      'entrypoint': instance.entrypoint,
      'value': instance.value,
    };

_$_Value _$$_ValueFromJson(Map<String, dynamic> json) => _$_Value(
      r: json['R'] as String?,
    );

Map<String, dynamic> _$$_ValueToJson(_$_Value instance) => <String, dynamic>{
      'R': instance.r,
    };
