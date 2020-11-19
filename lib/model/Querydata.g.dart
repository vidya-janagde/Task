// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Querydata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Query _$QueryFromJson(Map<String, dynamic> json) {
  return Query(
    redirects: (json['redirects'] as List)
            ?.map((e) =>
                e == null ? null : Redirect.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        '',
    pages: (json['pages'] as List)
            ?.map((e) =>
                e == null ? null : Page.fromJson(e as Map<String, dynamic>))
            ?.toList() ??
        '',
  );
}

Map<String, dynamic> _$QueryToJson(Query instance) => <String, dynamic>{
      'redirects': instance.redirects?.map((e) => e?.toJson())?.toList(),
      'pages': instance.pages?.map((e) => e?.toJson())?.toList(),
    };
