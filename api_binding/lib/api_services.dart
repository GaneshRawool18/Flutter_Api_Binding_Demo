import 'dart:convert';
import 'dart:developer';

import 'package:api_binding/get_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Services {
  static void getData(context) async {
    Uri url = Uri.parse("https://api.restful-api.dev/objects");
    http.Response getDataResponse = await http.get(url);

    log("Get response : ${getDataResponse.body}");
    log("Get response  runtimeType : ${getDataResponse.runtimeType}");

    List<dynamic> jsonResponse = jsonDecode(getDataResponse.body);

    log("Json Response runtimetype : ${jsonResponse.runtimeType}");
    log("Json Response : ${jsonResponse}");

    Navigator.of(context).push(MaterialPageRoute(builder: (context) {
      return GetData(data: jsonResponse);
    }));
  }
}
