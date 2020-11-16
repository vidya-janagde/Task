
import 'package:json_annotation/json_annotation.dart';

part 'ContinueModel.g.dart';

@JsonSerializable()
class Continue {
  Continue({
    this.gpsoffset,
    this.continueContinue,
  });

  @JsonKey(name: 'gpsoffset', defaultValue: '')
  int gpsoffset;

  @JsonKey(name: 'continue', defaultValue: '')
  String continueContinue;

  factory Continue.fromJson(Map<String, dynamic> json) =>_$ContinueFromJson(json);

  Map<String, dynamic> toJson() => _$ContinueToJson(this);




}