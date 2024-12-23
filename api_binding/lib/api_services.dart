import 'dart:convert';
import 'dart:developer';

import 'package:api_binding/get_data.dart';
import 'package:api_binding/user_post_data.dart';
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

  static void postData(
    context,
    TextEditingController name,
    TextEditingController price,
    TextEditingController color,
  ) async {
    dynamic addData = {
      "name": name.text,
      "data": {
        "price": int.parse(price.text),
        "color": color.text,
      }
    };
    Uri url = Uri.parse("https://api.restful-api.dev/objects");
    http.Response postResponse = await http.post(url,
        body: jsonEncode(addData),
        headers: {"content-Type": "Application/json"});

    log("Post Response : ${postResponse.body}");

    dynamic jsonPostResponse = jsonDecode(postResponse.body);

    log("User Post Response : ${jsonPostResponse}");
    log("User Post Response Runtimetype : ${jsonPostResponse.runtimeType}");

    FocusScope.of(context).unfocus();

    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) {
      return UserPostData(userData: jsonPostResponse);
    }));
  }

  static void deleteData(
    context,
    TextEditingController id,
  ) async {
    Uri url = Uri.parse(id.text);
    http.Response deleteResponse = await http.delete(url);

    log("Delete Response : ${deleteResponse.body}");
    log("Delete Response StatusCode : ${deleteResponse.statusCode}");

    FocusScope.of(context).unfocus();

    if (deleteResponse.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Response deleted successfully !'),
          duration: Duration(seconds: 5),
          backgroundColor: Colors.green,
        ),
      );
    }
  }
}
