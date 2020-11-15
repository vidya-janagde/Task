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