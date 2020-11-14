import 'dart:core';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';

class Wikipedia {

  Wikipedia({

    this.batchcomplete,
    this.wikipediaContinue,
    this.query
  });


  final dynamic batchcomplete;
  final Continue wikipediaContinue;
  List<Query> query = null;


  factory Wikipedia.fromJson(dynamic json) {

//      List<dynamic> list = json['query'];
//      List<Query> quarylist = list.map((i) => Query.fromJson(i)).toList();


    var list = new List();
    json.forEach((key, value){
      value.forEach((value) {
        list.add(value);
        print("array_key" + key);
      });
    });

    print(list);

    List<Query> quarylist = new List<Query>();
    quarylist = list.map((i) => Query.fromJson(i)).toList();


      return new Wikipedia(
        batchcomplete: json["batchcomplete"],
        wikipediaContinue: Continue.fromJson(json["continue"]),
        query: quarylist,
      );
    }

  }

//  Map<String, dynamic> toJson() => {
//    "warnings": warnings.toJson(),
//    "batchcomplete": batchcomplete,
//    "continue": wikipediaContinue.toJson(),
//    "query": query.to,
//  };


  String error;


//  factory Wikipedia.fromJson(Map<String, dynamic> json) {
//
//
//
////    List<dynamic> listquery = json['query'];
////    List<Query> quarylist = listquery.map((i) => Query.fromJson(i)).toList();
//
//    return Wikipedia(
//      batchcomplete: json["batchcomplete"],
//      welcomeContinue: Continue.fromJson(json["continue"]),
//      query: Query.fromJson(json["query"]),,
//
//
//      );
//
//
//  }


//  Wikipedia.withError(String errorValue)
//      :error = errorValue;




class Warnings {
  Warnings({
    this.main,
  });

  final Main main;

  factory Warnings.fromJson(Map<String, dynamic> json) =>
      Warnings(
        main: Main.fromJson(json["main"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "main": main.toJson(),
      };
}

class Main {
  Main({
    this.warnings,
  });

  final String warnings;

  factory Main.fromJson(Map<String, dynamic> json) =>
      Main(
        warnings: json["warnings"],
      );

  Map<String, dynamic> toJson() =>
      {
        "warnings": warnings,
      };
}

class Query {
  Query( {
    this.redirects,
    this.pages,
  });

  final List<Redirect> redirects;

  final List<Page> pages;

  factory Query.fromJson(Map<String, dynamic> json) {
    var list = new List();


    json.forEach((key, value) {
      // First time: value = [{"id": 173,"user_id": 21}, {"id": 174,"user_id": 21}]
      // Second time: value = [{"id": 175, "user_id": 21}, {"id": 176, "user_id": 21}]
      list.add(value);
      print("array_key  " + key);
    });

    print(list);
    List<Page> myorders = new List<Page>();



    List<Redirect> redirect = new List<Redirect>();

    myorders = list.map((i) => Page.fromJson(i)).toList();

//    redirect = list.map((i) => Redirect.fromJson(i)).toList();


    return new Query(pages: myorders, redirects: redirect);

//   List<Redirect> redirect = list.map((i)=>Redirect.fromJson(i));
//
//    var  listquary = json['pages'] as List;
//    List<Page> quary = listquary.map((i)=>Page.fromJson(i));
//
//   return Query(
//      redirects: redirect,
//      pages: quary,
//    );
//    }


//  Map<String, dynamic> toJson() => {
//    "redirects": List<dynamic>.from(redirects.map((x) => x.toJson())),
//    "pages": List<dynamic>.from(pages.map((x) => x.toJson())),
//  };


  }
}

class Page {
  Page({
    this.pageid,
    this.ns,
    this.title,
    this.index,
    this.thumbnail,
    this.terms,
  });

  final int pageid;
  final int ns;
  final String title;
  final int index;
  final List<Thumbnail> thumbnail;
  final List<Terms> terms;

  factory Page.fromJson(Map<String, dynamic> json) {
    List <dynamic> thumbnail = json['thumbnail'];
    List<Thumbnail> listthumbnail = thumbnail.map((i) => Thumbnail.fromJson(i))
        .toList();

    List <dynamic> terms = json['terms'];
    List<Terms> listterms = terms.map((i) => Terms.fromJson(i)).toList();


    return Page(
      pageid: json["pageid"],
      ns: json["ns"],
      title: json["title"],
      index: json["index"],
      thumbnail: listthumbnail,
      terms: listterms,
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

class Terms {


  Terms({
    this.description,
  });

  final List<String> description;

  factory Terms.fromJson(Map<String, dynamic> json) {
//    var list = json['description'] as List;
//    List<String> termslist = list.map((i)=>String.fromEnvironment(i));
    var list = new List();


    json.forEach((key, value) {
      list.add(value);
    });
    print(list);
    List<String> myorders = new List<String>();

    myorders = list.map((i) => String.fromCharCodes(i).toString());
    return new Terms(description: myorders);
  }
//   return Terms(
//      description: termslist,
//    );
}

//  Map<String, dynamic> toJson() => {
//    "description": List<dynamic>.from(description.map((x) => x)),
//  };



class Thumbnail {
  Thumbnail({
    this.source,
    this.width,
    this.height,
  });

  String source;

  int width;

  int height;


  factory Thumbnail.fromJson(Map<String, dynamic> json) {
    return Thumbnail(
      source: json["source"],
      width: json["width"],
      height: json["height"],
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "source": source,
        "width": width,
        "height": height,
      };
}

class Redirect {
  Redirect({
    this.index,
    this.from,
    this.to,
  });

  int index;
  String from;
  String to;

  factory Redirect.fromJson(Map<String, dynamic> json) {
    return Redirect(
      index: json["index"],
      from: json["from"],
      to: json["to"],
    );
  }

  Map<String, dynamic> toJson() =>
      {
        "index": index,
        "from": from,
        "to": to,
      };
}

class Continue {
  Continue({
    this.gpsoffset,
    this.continueContinue,
  });

  int gpsoffset;
  String continueContinue;

  factory Continue.fromJson(Map<String, dynamic> json) =>
      Continue(
        gpsoffset: json["gpsoffset"],
        continueContinue: json["continue"],
      );

  Map<String, dynamic> toJson() =>
      {
        "gpsoffset": gpsoffset,
        "continue": continueContinue,
      };
}
