import 'package:fluttervaluelab/model/Termsdata.dart';
import 'package:fluttervaluelab/model/Thumbnaildata.dart';

class Pagedata {
  Pagedata({
    this.pageid,
    this.ns,
    this.title,
    this.index,
    this.thumbnail,
    this.terms,
  });

  int pageid;
  int ns;
  String title;
  int index;
  List<Thumbnaildata> thumbnail;
  List<Termsdata> terms;

  factory Pagedata.fromJson(Map<String, dynamic> json) {
    List<dynamic> list = json['thumbnail'];
    List<Thumbnaildata> thumbnail = list.map((i) => Thumbnaildata.fromJson(i))
        .toList();

    List<dynamic> listterms = json['terms'];
    List<Termsdata> termsdata = listterms.map((i) => Termsdata.fromJson(i))
        .toList();

    return Pagedata(
      pageid: json["pageid"],
      ns: json["ns"],
      title: json["title"],
      index: json["index"],
      thumbnail: thumbnail,
      terms:termsdata  ,
    );
  }

//  Map<String, dynamic> toJson() => {
//    "pageid": pageid,
//    "ns": ns,
//    "title": title,
//    "index": index,
//    "thumbnail": thumbnail == null ? null : thumbnail.toJson(),
//    "terms": terms == null ? null : terms.toJson(),
//  };
}