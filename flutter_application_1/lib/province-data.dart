// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/donvihanhchinh.dart';
class Province
{
  String id;
  String name;
  String level;
  Province({required this.id, required this.name, required this.level});

  factory Province.fromJson(Map<String, dynamic> json) {
    return Province(
      id: json['id'],
      name: json['name'],
      level: json['level'],
    );
  }

  static fromMap(json) {}
}