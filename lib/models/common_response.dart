// To parse this JSON data, do
//
//     final commonResponse = commonResponseFromJson(jsonString);

import 'dart:convert';

CommonResponse commonResponseFromJson(String str) =>
    CommonResponse.fromJson(json.decode(str));

String commonResponseToJson(CommonResponse data) => json.encode(data.toJson());

class CommonResponse {
  int statusCode;
  String statusMessage;
  String status;
  dynamic data;
  String? errorCode;

  CommonResponse({
    required this.statusCode,
    required this.statusMessage,
    required this.status,
    required this.data,
    this.errorCode,
  });

  factory CommonResponse.fromJson(Map<String, dynamic> json) => CommonResponse(
        statusCode: json["statusCode"],
        statusMessage: json["statusMessage"],
        status: json["status"],
        data: json["data"],
        errorCode: json["errorCode"],
      );

  Map<String, dynamic> toJson() => {
        "statusCode": statusCode,
        "statusMessage": statusMessage,
        "status": status,
        "data": data,
        "errorCode": errorCode,
      };
}
