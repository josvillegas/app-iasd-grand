import 'dart:developer';

import 'package:http/http.dart' as http;

class MatutinaRepo {
  Future<http.Response> getMatutinas() async {
    final uri =
        Uri.parse("https://mocki.io/v1/b2ed5095-e922-4e29-8190-6da1dda46182");
    final response = await http.get(uri);
    log(response.body);
    return response;
  }
}
