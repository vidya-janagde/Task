// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Querydata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query _$QueryFromJson(Map<String, dynamic> json) {
  return Query(
      redirects: json['redirects'] == null
          ? null
          : Redirect.fromJson(json['redirects'] as Map<String, dynamic>) ?? '',
      pages: json['pages'] == null
          ? null
          : Page.fromJson(json['pages'] as Map<String, dynamic>) ?? '');
}

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'redirects': instance.redirects?.toJson(),
      'pages': instance.pages?.toJson()
    };
