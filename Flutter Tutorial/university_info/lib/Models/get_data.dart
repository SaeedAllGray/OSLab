import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:university_info/Models/university.dart';

abstract class GetData {
  static Future<List<University>> getCountryUniversities(String country) async {
    try {
      Response response = await Dio()
          .get('http://universities.hipolabs.com/search?country=$country');
      print(response.data[0].runtimeType);

      var universities =
          response.data.map((uniJson) => University.fromJson(uniJson)).toList();

      return universities;
    } catch (e) {
      print(e);
    }
    return List<University>();
  }

  static Future<List> searchUniversityNames(String name) async {
    try {
      Response response =
          await Dio().get('http://universities.hipolabs.com/search?name=middle');

      var universities =
          response.data.map((uniJson) => University.fromJson(uniJson)).toList();

      // print(universities);
      return universities;
    } catch (e) {
      print(e);
    }
  }
}
