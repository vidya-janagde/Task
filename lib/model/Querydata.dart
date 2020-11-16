

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


//  factory Querydata.fromJson(Map<String, dynamic> json) {
//    List<dynamic> list = json['redirects'];
//    List<Redirectdata> qaurydata = list.map((i) => Redirectdata.fromJson(i)).toList();
//
//
//    List<dynamic> listcont = json['pages'];
//    List<Pagedata> condata = listcont.map((i) => Pagedata.fromJson(i))
//        .toList();
//
//    return Querydata(
//      redirects:qaurydata,
//      pages: condata,
//    );
//  }

//  Map<String, dynamic> toJson() => {
//    "redirects": List<dynamic>.from(redirects.map((x) => x.toJson())),
//    "pages": List<dynamic>.from(pages.map((x) => x.toJson())),
//  };
}