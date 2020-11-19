

import 'package:json_annotation/json_annotation.dart';

part 'Thumbnaildata.g.dart';
@JsonSerializable()
class Thumbnail {
  Thumbnail({
    this.source,
    this.width,
    this.height,
  });
  @JsonKey(name: 'source', defaultValue: '',disallowNullValue: false)
  String source;
  @JsonKey(name: 'width', defaultValue: '',disallowNullValue: true)
  int width;
  @JsonKey(name: 'height', defaultValue: '',disallowNullValue: true)
  int height;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>_$ThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);

}