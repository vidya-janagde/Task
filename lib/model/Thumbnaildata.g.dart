// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Thumbnaildata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Thumbnail _$ThumbnailFromJson(Map<String, dynamic> json) {
  return Thumbnail(
      source: json['source'] as String ?? '',
      width: json['width'] as int ?? '',
      height: json['height'] as int ?? '');
}

Map<String, dynamic> _$ThumbnailToJson(Thumbnail instance) => <String, dynamic>{
      'source': instance.source,
      'width': instance.width,
      'height': instance.height
    };
