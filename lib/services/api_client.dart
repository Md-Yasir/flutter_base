import 'dart:convert';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;
import 'package:flutter_base/models/common_response.dart';
import 'package:http/http.dart' as http;

class ApiClient {
  Future<CommonResponse> login(String email, String password) async {
    var client = http.Client();
    var url = Uri.parse("http://localhost:8080/api/v1/user/auth");
    var response = await client.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(
        <String, String>{'email': email, 'password': password},
      ),
    );
    var responsedecode = commonResponseFromJson(response.body);
    if (responsedecode.statusCode == 200) {
      debugPrint(responsedecode.statusMessage);
      debugPrint("hello da yasir");
    } else {
      debugPrint("error");
    }
    return (commonResponseFromJson(response.body));
  }
}
