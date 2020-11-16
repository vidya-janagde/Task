



import 'package:fluttervaluelab/model/ContinueModel.dart';
import 'package:fluttervaluelab/model/Querydata.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Datamodel.g.dart';
@JsonSerializable(explicitToJson: true)
class Data {
  Data({
    this.batchcomplete,
    this.continuee,
    this.query,
  });
  @JsonKey(name: 'batchcomplete', defaultValue: '')
  bool batchcomplete;
  @JsonKey(name: 'continue', defaultValue: '')
  Continue continuee;
  @JsonKey(name: 'query', defaultValue: '')
  Query query;



//  factory Data.fromJson(Map<String, dynamic> json) {
//    List<dynamic> list = json['query'];
//    List<Querydata> qaurydata = list.map((i) => Querydata.fromJson(i)).toList();
//
//
//
//    List<dynamic> listcont = json['continue'];
//    List<Continuedata> condata = listcont.map((i) => Continuedata.fromJson(i)).toList();
//
//    return Data(
//      batchcomplete: json["batchcomplete"],
//      dataContinue: condata,
//
//      query:  json["query"] = (json['query'] as List)
//        ?.map((e) => e == null ? null : Map<String, Querydata>.from(e))
//        ?.toList(),
//    );
//  }

//    Map<String, dynamic> toJson() => {
//      "batchcomplete": batchcomplete,
//      "continue": dataContinue.toJson(),
//      "query": this.qaurydata,
//    };
//  }

  factory Data.fromJson(Map<String, dynamic> json) =>_$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}












