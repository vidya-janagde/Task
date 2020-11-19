// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Termsdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Terms _$TermsFromJson(Map<String, dynamic> json) {
  return Terms(
    description:
        (json['description'] as List)?.map((e) => e as String)?.toList() ?? '',
  );
}

Map<String, dynamic> _$TermsToJson(Terms instance) => <String, dynamic>{
      'description': instance.description,
    };
