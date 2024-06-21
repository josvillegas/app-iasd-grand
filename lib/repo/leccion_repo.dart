import 'dart:developer';

import 'package:http/http.dart' as http;

class LeccionRepo {
  Future<http.Response> getLecciones() async {
    final uri =
        Uri.parse("https://mocki.io/v1/fcd54754-5472-43b6-b810-0114e1083688");
    final response = await http.get(uri);
    log(response.body);
    return response;
  }
}
