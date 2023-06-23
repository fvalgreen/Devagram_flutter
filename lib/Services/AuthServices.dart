import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';


class AuthServices{
  final String env = dotenv.env['API_BASE_URL'].toString();

  Future<http.Response> login(String login, String senha) async {
    var resultado;
    
    var url = Uri.parse('$env/api/login');

    var header = {
      'Content-Type': 'application/json; charset=UTF-8',
    };

    var payload = {
      'login': login,
      'senha': senha
    };

    var resposta = await http.post(url, body: jsonEncode(payload), headers: header);
    print(resposta.body);
    return resposta;
  }
}