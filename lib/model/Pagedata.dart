import 'package:fluttervaluelab/model/Termsdata.dart';
import 'package:fluttervaluelab/model/Thumbnaildata.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Pagedata.g.dart';

@JsonSerializable(explicitToJson: true)
class Page {
  Page({
    this.pageid,
    this.ns,
    this.title,
    this.index,
    this.thumbnail,
    this.terms,
  });

  @JsonKey(name: 'pageid', defaultValue: '')
  int pageid;
  @JsonKey(name: 'ns', defaultValue: '')
  int ns;
  @JsonKey(name: 'title', defaultValue: '')
  String title;
  @JsonKey(name: 'index', defaultValue: '')
  int index;
  @JsonKey(name: 'thumbnail', defaultValue: '')
  Thumbnail thumbnail;
  @JsonKey(name: 'terms', defaultValue: '')
  Terms terms;

  factory Page.fromJson(Map<String, dynamic> json) =>_$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);


}