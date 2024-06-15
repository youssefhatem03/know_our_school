//TODO: add your view model class here

import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import '../Model/model.dart';

class SchoolViewModel extends ChangeNotifier {
  SchoolModel? _school;

  SchoolModel? get school => _school;

  Future<Map<String, dynamic>> getAllData() async {
    try {
      final String response = await rootBundle.loadString('lib/JSONdata/SchoolData.json');
      final List<dynamic> data = json.decode(response);
      _school = SchoolModel.fromJson(data[0]);
      notifyListeners();
      return data[0];
    } catch (e) {
      return {};
    }
  }
}

