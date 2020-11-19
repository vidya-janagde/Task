

import 'package:fluttervaluelab/model/Pagedata.dart';
import 'package:fluttervaluelab/model/Redirectdata.dart';
import 'package:json_annotation/json_annotation.dart';
part'Querydata.g.dart';

@JsonSerializable(explicitToJson: true,anyMap: true)
class Query {
  Query({
    this.redirects,
    this.pages,
  });

  @JsonKey(name: 'redirects', defaultValue: '',disallowNullValue: true)
 List<Redirect>  redirects;
  @JsonKey(name: 'pages', defaultValue: '',disallowNullValue: true)
 List<Page>  pages;


  factory Query.fromJson(Map<dynamic, dynamic> json) =>_$QueryFromJson(json);

  Map<String, dynamic> toJson() => _$QueryToJson(this);



}