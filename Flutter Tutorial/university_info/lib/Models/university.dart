import 'dart:convert';

class University {
  final String country;
  final String name;
  final String website;

  University(this.country, this.name, this.website);

  factory University.fromJson(Map<String, dynamic> uriJson) {
    return University(
        uriJson["country"], uriJson["name"], uriJson['web_pages'][0]);
  }

  @override
  String toString() {
    return name + country;
  }
}
