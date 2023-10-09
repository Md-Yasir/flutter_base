import 'package:flutter_base/models/login_response.dart';
import 'package:http/http.dart' as http;

class HttpService {
  Future<LoginResponse> login(String email, String password) async {
    var client = http.Client();
    var url = Uri.parse("http://localhost:8080/api/v1/user/auth");
    var response = await client.post(
      url,
      body: {email, password},
    );
    return loginResponseFromJson(response.body);
  }
}
