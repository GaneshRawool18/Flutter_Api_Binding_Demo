import 'dart:convert';
import 'dart:developer';

import 'package:api_binding/get_data.dart';
import 'package:api_binding/user_post_data.dart';
import 'package:api_binding/user_updated_data.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Services {
  //Get Data method
  static void getData(context) async {
    Uri url = Uri.parse("https://api.restful-api.dev/objects");
    http.Response getDataResponse = await http.get(url);

    log("Get response : ${getDataResponse.body}");
    log("Get response StatusCode : ${getDataResponse.statusCode}");
    log("Get response  runtimeType : ${getDataResponse.runtimeType}");

    List<dynamic> jsonResponse = jsonDecode(getDataResponse.body);

    log("Json Response runtimetype : ${jsonResponse.runtimeType}");
    log("Json Response : ${jsonResponse}");

    if (getDataResponse.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Get data successfully !'),
          duration: Duration(seconds: 5),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
        return GetData(data: jsonResponse);
      }));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Failed to get data."),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.red,
      ));
    }
  }

// Post data  method
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
    log("Get response StatusCode : ${postResponse.statusCode}");

    dynamic jsonPostResponse = jsonDecode(postResponse.body);

    log("User Post Response : ${jsonPostResponse}");
    log("User Post Response Runtimetype : ${jsonPostResponse.runtimeType}");

    FocusScope.of(context).unfocus();

    if (postResponse.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Response posted successfully !'),
          duration: Duration(seconds: 5),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return UserPostData(userData: jsonPostResponse);
      }));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Failed to post data."),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.red,
      ));
    }
  }

//Update data method
  static void putData(TextEditingController link, TextEditingController name,
      TextEditingController price, TextEditingController color, context) async {
    dynamic updateData = {
      "name": name.text,
      "data": {
        "price": int.parse(price.text),
        "color": color.text,
      }
    };
    Uri url = Uri.parse(link.text);
    http.Response putDataResponse = await http.put(url,
        body: jsonEncode(updateData),
        headers: {"Content-Type": "Application/json"});

    log("Update Response : ${putDataResponse.body}");
    log("Update Response StatusCode : ${putDataResponse.statusCode}");

    dynamic jsonUpdateResponse = jsonDecode(putDataResponse.body);
    log("Json Update Response : ${jsonUpdateResponse}");
    log("Json Update Response RuntimeType : ${jsonUpdateResponse.runtimeType}");

    if (putDataResponse.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Update data successfully!"),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.green,
      ));
      log("Done1");
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return UserUpdatedData(
          updatedData: jsonUpdateResponse,
          idLink: link.text,
        );
      }));
      log("Done2");
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Failed to update data."),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.red,
      ));
      log("Update failed with status code: ${putDataResponse.statusCode}");
    }
  }

// Delete data method
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
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return AlertDialog(
              title: const Text("Succes"),
              content: const Text("Response deleted successfully"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text("Okay"))
              ],
            );
          });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Failed to delete data."),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.red,
      ));
    }
  }
}
