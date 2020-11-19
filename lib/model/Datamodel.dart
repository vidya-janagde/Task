



import 'package:fluttervaluelab/model/ContinueModel.dart';
import 'package:fluttervaluelab/model/Querydata.dart';
import 'package:json_annotation/json_annotation.dart';

part 'Datamodel.g.dart';
@JsonSerializable(explicitToJson: true,anyMap: true)
class Data {
  Data( {
    this.batchcomplete,
    this.continuee,
    this.query,
  });
  @JsonKey(name: 'batchcomplete', defaultValue: '',ignore: true)
  bool batchcomplete;
  @JsonKey(name: 'continue', defaultValue: '')
  Continue continuee;

  @JsonKey(name: 'query', defaultValue: '',disallowNullValue: true)
  Query query;
 // Map<dynamic, List<Query>> query;





  factory Data.fromJson(Map<String,dynamic>  json) =>_$DataFromJson(json);

  Map <String,dynamic> toJson() => _$DataToJson(this);
}












