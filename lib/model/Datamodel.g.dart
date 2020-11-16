// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Datamodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) {
  return Data(
      batchcomplete: json['batchcomplete'] as bool ?? '',
      continuee: json['continue'] == null
          ? null
          : Continue.fromJson(json['continue'] as Map<String, dynamic>) ?? '',
      query: json['query'] == null
          ? null
          : Query.fromJson(json['query'] as Map<String, dynamic>) ?? '');
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'batchcomplete': instance.batchcomplete,
      'continue': instance.continuee?.toJson(),
      'query': instance.query?.toJson()
    };
