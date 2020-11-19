// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Datamodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map json) {
  return Data(
    continuee: json['continue'] == null
        ? null
        : Continue.fromJson((json['continue'] as Map)?.map(
              (k, e) => MapEntry(k as String, e),
            )) ??
            '',
    query: json['query'] == null
        ? null
        : Query.fromJson(json['query'] as Map) ?? '',
  );
}

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'continue': instance.continuee?.toJson(),
      'query': instance.query?.toJson(),
    };
