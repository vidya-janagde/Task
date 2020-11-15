import 'package:fluttervaluelab/model/Pagedata.dart';
import 'package:fluttervaluelab/model/Redirectdata.dart';

class Querydata {
  Querydata({
    this.redirects,
    this.pages,
  });

  List<Redirectdata> redirects;
  List<Pagedata> pages;

  factory Querydata.fromJson(Map<String, dynamic> json) {
    List<dynamic> list = json['redirects'];
    List<Redirectdata> qaurydata = list.map((i) => Redirectdata.fromJson(i)).toList();


    List<dynamic> listcont = json['pages'];
    List<Pagedata> condata = listcont.map((i) => Pagedata.fromJson(i))
        .toList();

    return Querydata(
      redirects:qaurydata,
      pages: condata,
    );
  }

//  Map<String, dynamic> toJson() => {
//    "redirects": List<dynamic>.from(redirects.map((x) => x.toJson())),
//    "pages": List<dynamic>.from(pages.map((x) => x.toJson())),
//  };
}