

import 'package:json_annotation/json_annotation.dart';

part 'Thumbnaildata.g.dart';
@JsonSerializable()
class Thumbnail {
  Thumbnail({
    this.source,
    this.width,
    this.height,
  });
  @JsonKey(name: 'source', defaultValue: '')
  String source;
  @JsonKey(name: 'width', defaultValue: '')
  int width;
  @JsonKey(name: 'height', defaultValue: '')
  int height;

  factory Thumbnail.fromJson(Map<String, dynamic> json) =>_$ThumbnailFromJson(json);

  Map<String, dynamic> toJson() => _$ThumbnailToJson(this);

//  factory Thumbnaildata.fromJson(Map<String, dynamic> json) => Thumbnaildata(
//    source: json["source"],
//    width: json["width"],
//    height: json["height"],
//  );
//
//  Map<String, dynamic> toJson() => {
//    "source": source,
//    "width": width,
//    "height": height,
//  };
}