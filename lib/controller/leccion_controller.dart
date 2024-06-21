import 'dart:convert';

import 'package:iasd_adult_app/models/leccion.dart';
import 'package:iasd_adult_app/repo/leccion_repo.dart';

class LeccionController {
  final leccionRepo = LeccionRepo();

  Future<List<Leccion>> getLecciones() async {
    final response = await leccionRepo.getLecciones();
    final data = jsonDecode(utf8.decode(response.bodyBytes));
    List<Leccion> lecciones = [];
    final leccionesJson = data['lecciones'];

    for (dynamic leccionJson in leccionesJson) {
      lecciones.add(Leccion.fromJson(leccionJson));
    }
    return lecciones;
  }
}
