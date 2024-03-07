import 'dart:convert';

List<Postmodel> postmodelFromJson(String str) =>
      List<Postmodel>.from(json.decode(str).map((x)=> Postmodel.fromJson(x)));
String postmodelToJson(List<Postmodel> data) =>
      json.encode(List<dynamic>.from(data.map((x)=> x.toJson())));
class Postmodel {
  Postmodel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });
  int userId;
  int id;
  String title;
  String body;
  factory Postmodel.fromJson(Map<String, dynamic> json) => Postmodel(
        userId: json["userId"],
        id: json["id"],
        title: json["title"],
        body: json["body"],
         );
  Map<String, dynamic> toJson() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}