



import 'package:fluttervaluelab/model/ContinueModel.dart';
import 'package:fluttervaluelab/model/Querydata.dart';

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












