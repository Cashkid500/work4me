import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:workforme/presentation/registration/otp/models/phoneDto.dart';

class ApiClient {
  
  static Future<http.Response> validateCode(CodeValidationDto dto) async {
    final url = Uri.parse('${Config.baseUrl}/authenticate/validate-one-time-code?api-version=1');
    final response = await http.post(
      url,
      body: jsonEncode(dto.toJson()), // Serialize DTO to JSON
      headers: {'Content-Type': 'application/json'},
    );
    return response;
  }
}

class Config {
  static const String baseUrl = 'https://localhost:44363';
}