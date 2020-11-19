

import 'package:json_annotation/json_annotation.dart';

part 'Redirectdata.g.dart';

@JsonSerializable()
class Redirect {
  Redirect({
    this.index,
    this.from,
    this.to,
  });
  @JsonKey(name: 'index', defaultValue: '',disallowNullValue: true)
  int index;
  @JsonKey(name: 'from', defaultValue: '',disallowNullValue: true)
  String from;
  @JsonKey(name: 'to', defaultValue: '',disallowNullValue: true)
  String to;


  factory Redirect.fromJson(Map<String, dynamic> json) =>_$RedirectFromJson(json);

  Map<String, dynamic> toJson() => _$RedirectToJson(this);


}