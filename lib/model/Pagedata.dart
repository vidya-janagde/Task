import 'package:fluttervaluelab/model/Termsdata.dart';
import 'package:fluttervaluelab/model/Thumbnaildata.dart';
import 'package:json_annotation/json_annotation.dart';
part 'Pagedata.g.dart';

@JsonSerializable(explicitToJson: true,anyMap: true)
class Page {
  Page({
    this.pageid,
    this.ns,
    this.title,
    this.index,
    this.thumbnail,
    this.terms,
  });

  @JsonKey(name: 'pageid', defaultValue: '',disallowNullValue: true)
  int pageid;
  @JsonKey(name: 'ns', defaultValue: '',disallowNullValue: true)
  int ns;
  @JsonKey(name: 'title', defaultValue: '',disallowNullValue: true)
  String title;
  @JsonKey(name: 'index', defaultValue: '',disallowNullValue: true)
  int index;
  @JsonKey(name: 'thumbnail', defaultValue: '',disallowNullValue: true)
  Thumbnail thumbnail;
  @JsonKey(name: 'terms', defaultValue: '',disallowNullValue: true)
  Terms terms;

  factory Page.fromJson(Map<String, dynamic> json) =>_$PageFromJson(json);

  Map<String, dynamic> toJson() => _$PageToJson(this);


}