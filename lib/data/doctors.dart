// To parse this JSON data, do
//
//     final doctors = doctorsFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<Doctors?>? doctorsFromJson(String str) => json.decode(str) == null ? [] : List<Doctors?>.from(json.decode(str)!.map((x) => Doctors.fromJson(x)));

String doctorsToJson(List<Doctors?>? data) => json.encode(data == null ? [] : List<dynamic>.from(data.map((x) => x!.toJson())));

class Doctors {
  Doctors({
    required this.doctor,
    required this.photo,
    required this.treatment,
    required this.datetime,
    required this.type,
    required this.color,
    required this.feedbackStars,
    required this.feedbackComment,
    required this.id,
  });

  String? doctor;
  String? photo;
  String? treatment;
  DateTime? datetime;
  Type? type;
  String? color;
  String? feedbackStars;
  String? feedbackComment;
  String? id;

  factory Doctors.fromJson(Map<String, dynamic> json) => Doctors(
    doctor: json["doctor"],
    photo: json["photo"],
    treatment: json["treatment"],
    datetime: DateTime.parse(json["datetime"]),
    type: typeValues.map[json["type"]],
    color: json["color"],
    feedbackStars: json["feedback_stars"],
    feedbackComment: json["feedback_comment"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "doctor": doctor,
    "photo": photo,
    "treatment": treatment,
    "datetime": datetime?.toIso8601String(),
    "type": typeValues.reverse![type],
    "color": color,
    "feedback_stars": feedbackStars,
    "feedback_comment": feedbackComment,
    "id": id,
  };
}

enum Type { Deposit, Invoice, Payment, Withdrawal }

final typeValues = EnumValues({
  "deposit": Type.Deposit,
  "invoice": Type.Invoice,
  "payment": Type.Payment,
  "withdrawal": Type.Withdrawal
});

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}