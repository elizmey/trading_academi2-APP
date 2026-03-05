import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {

  static Future login(String email, String password) async {

    final response = await http.post(
      Uri.parse("http://10.0.2.2:5000/api/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password
      }),
    );

    return jsonDecode(response.body);
  }

}