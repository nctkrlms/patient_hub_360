import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../data/doctors.dart';


class UrlHandler{

  String mainPath = 'https://63b7ea0d4d97e82aa3c91a75.mockapi.io/appointments';

  Future<List<Doctors>> getDoctors() async {

    String url = mainPath;
    // /user/register
    var response = await http.get(
      Uri.parse(url),
      // headers: {"Authorization": "Bearer $token"},
    );

    if (response.statusCode == 200 || response.statusCode == 201) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => Doctors.fromJson(job)).toList();
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load album');
    }
  }
}