import 'dart:convert';

import 'package:iasd_adult_app/models/matutina.dart';
import 'package:iasd_adult_app/repo/matutina_repo.dart';

class MatutinaController {
  final matutinaRepo = MatutinaRepo();

  Future<List<Matutina>> getMatutinas() async {
    final response = await matutinaRepo.getMatutinas();
    final data = jsonDecode(utf8.decode(response.bodyBytes));
    List<Matutina> matutinas = [];
    final matutinasJson = data['matutinas'];

    for (dynamic matutinaJson in matutinasJson) {
      matutinas.add(Matutina.fromJson(matutinaJson));
    }
    return matutinas;
  }
}
