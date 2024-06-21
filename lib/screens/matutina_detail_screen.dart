import 'package:flutter/material.dart';
import 'package:iasd_adult_app/constant/constants.dart';
import 'package:iasd_adult_app/controller/matutina_controller.dart';
import 'package:iasd_adult_app/repo/matutina_repo.dart';

class MatutinaDetailScreen extends StatefulWidget {
  const MatutinaDetailScreen({super.key});

  @override
  State<MatutinaDetailScreen> createState() => _MatutinaDetailScreenState();
}

class _MatutinaDetailScreenState extends State<MatutinaDetailScreen> {
  @override
  Widget build(BuildContext context) {
    MatutinaRepo().getMatutinas();
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: AppColors().white),
        backgroundColor: AppColors().primary,
        elevation: 0.0,
      ),
      body: FutureBuilder(
        future: MatutinaController().getMatutinas(),
        builder: (context, snapshot) {
          snapshot.data;

          if (snapshot.data == null) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final matutinas = snapshot.data;

          return ListView.builder(
              itemCount: 1,
              itemBuilder: (context, index) {
                return SingleChildScrollView(
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 20),
                    child: Column(
                      children: [
                        Text(
                          matutinas![index].title,
                          style: const TextStyle(
                              fontSize: 36, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          matutinas[index].subtitle,
                          style: const TextStyle(
                              fontSize: 24, fontStyle: FontStyle.italic),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          matutinas[index].content,
                          style: const TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w400),
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
