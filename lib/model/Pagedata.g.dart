// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Pagedata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Page _$PageFromJson(Map<String, dynamic> json) {
  return Page(
    pageid: json['pageid'] as int ?? '',
    ns: json['ns'] as int ?? '',
    title: json['title'] as String ?? '',
    index: json['index'] as int ?? '',
    thumbnail: json['thumbnail'] == null
        ? null
        : Thumbnail.fromJson(json['thumbnail'] as Map<String, dynamic>) ?? '',
    terms: json['terms'] == null
        ? null
        : Terms.fromJson(json['terms'] as Map<String, dynamic>) ?? '',
  );
}

Map<String, dynamic> _$PageToJson(Page instance) => <String, dynamic>{
      'pageid': instance.pageid,
      'ns': instance.ns,
      'title': instance.title,
      'index': instance.index,
      'thumbnail': instance.thumbnail?.toJson(),
      'terms': instance.terms?.toJson(),
    };
