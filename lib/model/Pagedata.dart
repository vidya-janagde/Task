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

//
//  factory Pagedata.fromJson(Map<String, dynamic> json) {
//    List<dynamic> list = json['thumbnail'];
//    List<Thumbnaildata> thumbnail = list.map((i) => Thumbnaildata.fromJson(i))
//        .toList();
//
//    List<dynamic> listterms = json['terms'];
//    List<Termsdata> termsdata = listterms.map((i) => Termsdata.fromJson(i))
//        .toList();
//
//    return Pagedata(
//      pageid: json["pageid"],
//      ns: json["ns"],
//      title: json["title"],
//      index: json["index"],
//      thumbnail: thumbnail,
//      terms:termsdata  ,
//    );
//  }

//  Map<String, dynamic> toJson() => {
//    "pageid": pageid,
//    "ns": ns,
//    "title": title,
//    "index": index,
//    "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
//    "terms": terms == null ? null : terms.toJson(),
//  };
}