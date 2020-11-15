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