

import 'package:json_annotation/json_annotation.dart';
part 'Termsdata.g.dart';

@JsonSerializable()
class Terms {
  Terms({
    this.description,
  });
  @JsonKey(name: 'description', defaultValue: '',disallowNullValue: true)
  List<String> description;

  factory Terms.fromJson(Map<String, dynamic> json) =>_$TermsFromJson(json);

  Map<String, dynamic> toJson() => _$TermsToJson(this);


}