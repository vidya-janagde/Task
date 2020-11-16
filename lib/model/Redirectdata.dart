

import 'package:json_annotation/json_annotation.dart';

part 'Redirectdata.g.dart';

@JsonSerializable()
class Redirect {
  Redirect({
    this.index,
    this.from,
    this.to,
  });
  @JsonKey(name: 'index', defaultValue: '')
  int index;
  @JsonKey(name: 'from', defaultValue: '')
  String from;
  @JsonKey(name: 'to', defaultValue: '')
  String to;


  factory Redirect.fromJson(Map<String, dynamic> json) =>_$RedirectFromJson(json);

  Map<String, dynamic> toJson() => _$RedirectToJson(this);

//  factory Redirectdata.fromJson(Map<String, dynamic> json) => Redirectdata(
//    index: json["index"],
//    from: json["from"],
//    to: json["to"],
//  );
//
//  Map<String, dynamic> toJson() => {
//    "index": index,
//    "from": from,
//    "to": to,
//  };
}