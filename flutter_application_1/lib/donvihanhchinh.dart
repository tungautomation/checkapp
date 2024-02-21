import 'package:flutter_application_1/province-data.dart';

class User {
  final List ward;
  final List district;
  final List province;
  
  User({required this.ward, required this.district, required this.province});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      ward: json['ward'],
      district: json['district'],
      province: json['province'],
    );
  }
}
