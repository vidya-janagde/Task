

import 'package:fluttervaluelab/model/Pagedata.dart';
import 'package:fluttervaluelab/model/Redirectdata.dart';
import 'package:json_annotation/json_annotation.dart';
part'Querydata.g.dart';

@JsonSerializable(explicitToJson: true)
class Query {
  Query({
    this.redirects,
    this.pages,
  });

  @JsonKey(name: 'redirects', defaultValue: '')
  Redirect redirects;
  @JsonKey(name: 'pages', defaultValue: '')
  Page pages;


  factory Query.fromJson(Map<dynamic, dynamic> json) =>_$QueryFromJson(json);

  Map<String, dynamic> toJson() => _$QueryToJson(this);



}