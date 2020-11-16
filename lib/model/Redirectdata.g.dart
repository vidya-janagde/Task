// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Redirectdata.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Redirect _$RedirectFromJson(Map<String, dynamic> json) {
  return Redirect(
      index: json['index'] as int ?? '',
      from: json['from'] as String ?? '',
      to: json['to'] as String ?? '');
}

Map<String, dynamic> _$RedirectToJson(Redirect instance) => <String, dynamic>{
      'index': instance.index,
      'from': instance.from,
      'to': instance.to
    };
