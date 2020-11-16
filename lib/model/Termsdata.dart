

import 'package:json_annotation/json_annotation.dart';
part 'Termsdata.g.dart';

@JsonSerializable()
class Terms {
  Terms({
    this.description,
  });
  @JsonKey(name: 'description', defaultValue: '')
  String description;

  factory Terms.fromJson(Map<String, dynamic> json) =>_$TermsFromJson(json);

  Map<String, dynamic> toJson() => _$TermsToJson(this);

//  factory Termsdata.fromJson(Map<String, dynamic> json) => Termsdata(
//    description: List<String>.from(json["description"].map((x) => x)),
//  );
//
//  Map<String, dynamic> toJson() => {
//    "description": List<dynamic>.from(description.map((x) => x)),
//  };
}