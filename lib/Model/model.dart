//TODO: add your model class here

import 'dart:convert';

List<SchoolModel> schoolModelFromJson(String str) => List<SchoolModel>.from(json.decode(str).map((x) => SchoolModel.fromJson(x)));

String schoolModelToJson(List<SchoolModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class SchoolModel {
  String schoolName;
  String schoolAddress;
  String studentsNo;
  String teachersNo;

  SchoolModel({
    required this.schoolName,
    required this.schoolAddress,
    required this.studentsNo,
    required this.teachersNo,
  });

  factory SchoolModel.fromJson(Map<String, dynamic> json) => SchoolModel(
    schoolName: json["School Name"],
    schoolAddress: json["School Address"],
    studentsNo: json["Number of Students"],
    teachersNo: json["Number of Teachers"],
  );

  Map<String, dynamic> toJson() => {
    "School Name": schoolName,
    "School Address": schoolAddress,
    "Number of Students": studentsNo,
    "Number of Teachers": teachersNo,
  };
}
