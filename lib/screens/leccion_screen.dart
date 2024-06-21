import 'package:flutter/material.dart';
import 'package:iasd_adult_app/constant/constants.dart';
import 'package:iasd_adult_app/controller/leccion_controller.dart';
import 'package:iasd_adult_app/repo/leccion_repo.dart';

class LeccionScreen extends StatefulWidget {
  const LeccionScreen({super.key});

  @override
  State<LeccionScreen> createState() => _LeccionScreenState();
}

class _LeccionScreenState extends State<LeccionScreen> {
  @override
  Widget build(BuildContext context) {
    LeccionRepo().getLecciones();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        backgroundColor: AppColors().primary,
        elevation: 0.0,
      ),
      body: FutureBuilder(
        future: LeccionController().getLecciones(),
        builder: (context, snapshot) {
          snapshot.data;

          if (snapshot.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final lecciones = snapshot.data;

          return ListView.builder(
              itemCount: lecciones?.length,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              lecciones![index].leccion,
                              style: const TextStyle(
                                  fontSize: 22, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              lecciones[index].todate,
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600,
                                  color: AppColors().gray),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          lecciones[index].title,
                          style: const TextStyle(
                              fontSize: 28, fontWeight: FontWeight.bold),
                          textAlign: TextAlign.right,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            lecciones[index].date,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: AppColors().gray),
                            textAlign: TextAlign.right,
                          ),
                        ),
                        Divider(
                          height: 20,
                          color: AppColors().pink,
                          thickness: 2,
                          indent: 4,
                          endIndent: 4,
                        ),
                        Image.asset('assets/images/leccionimg.png'),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'LEE PARA EL ESTUDIO DE ESTA SEMANA: ${lecciones[index].versWeek} ',
                          style: TextStyle(
                              color: AppColors().pink,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          'PARA MEMORIZAR:  ${lecciones[index].memorized}',
                          style: TextStyle(
                              color: AppColors().pink,
                              fontSize: 20,
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Text(
                          lecciones[index].content,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  )),
                );
              });
        },
      ),
    );
  }
}
