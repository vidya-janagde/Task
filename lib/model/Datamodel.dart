



class Data {
  Data({
    this.batchcomplete,
    this.dataContinue,
    this.query,
  });

  bool batchcomplete;
 List<Continuedata>  dataContinue;
  List<Map<String, Querydata>>  query;



  factory Data.fromJson(Map<String, dynamic> json) {
    List<dynamic> list = json['query'];
    List<Querydata> qaurydata = list.map((i) => Querydata.fromJson(i)).toList();



    List<dynamic> listcont = json['continue'];
    List<Continuedata> condata = listcont.map((i) => Continuedata.fromJson(i)).toList();

    return Data(
      batchcomplete: json["batchcomplete"],
      dataContinue: condata,

      query:  json["query"] = (json['query'] as List)
        ?.map((e) => e == null ? null : Map<String, Querydata>.from(e))
        ?.toList(),
    );
  }

//    Map<String, dynamic> toJson() => {
//      "batchcomplete": batchcomplete,
//      "continue": dataContinue.toJson(),
//      "query": this.qaurydata,
//    };
//  }
}

class Continuedata {
  Continuedata({
    this.gpsoffset,
    this.continueContinue,
  });

  int gpsoffset;
  String continueContinue;

  factory Continuedata.fromJson(Map<String, dynamic> json) => Continuedata(
    gpsoffset: json["gpsoffset"],
    continueContinue: json["continue"],
  );

  Map<String, dynamic> toJson() => {
    "gpsoffset": gpsoffset,
    "continue": continueContinue,
  };
}

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

class Termsdata {
  Termsdata({
    this.description,
  });

  List<String> description;

  factory Termsdata.fromJson(Map<String, dynamic> json) => Termsdata(
    description: List<String>.from(json["description"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "description": List<dynamic>.from(description.map((x) => x)),
  };
}

class Thumbnaildata {
  Thumbnaildata({
    this.source,
    this.width,
    this.height,
  });

  String source;
  int width;
  int height;

  factory Thumbnaildata.fromJson(Map<String, dynamic> json) => Thumbnaildata(
    source: json["source"],
    width: json["width"],
    height: json["height"],
  );

  Map<String, dynamic> toJson() => {
    "source": source,
    "width": width,
    "height": height,
  };
}

class Redirectdata {
  Redirectdata({
    this.index,
    this.from,
    this.to,
  });

  int index;
  String from;
  String to;

  factory Redirectdata.fromJson(Map<String, dynamic> json) => Redirectdata(
    index: json["index"],
    from: json["from"],
    to: json["to"],
  );

  Map<String, dynamic> toJson() => {
    "index": index,
    "from": from,
    "to": to,
  };
}
