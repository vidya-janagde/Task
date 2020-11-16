// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ContinueModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Continue _$ContinueFromJson(Map<String, dynamic> json) {
  return Continue(
      gpsoffset: json['gpsoffset'] as int ?? '',
      continueContinue: json['continue'] as String ?? '');
}

Map<String, dynamic> _$ContinueToJson(Continue instance) => <String, dynamic>{
      'gpsoffset': instance.gpsoffset,
      'continue': instance.continueContinue
    };
