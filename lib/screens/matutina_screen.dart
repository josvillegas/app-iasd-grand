import 'package:flutter/material.dart';
import 'package:iasd_adult_app/screens/matutina_detail_screen.dart';

class MatutinaScreen extends StatefulWidget {
  const MatutinaScreen({super.key});

  @override
  State<MatutinaScreen> createState() => _MatutinaScreenState();
}

class _MatutinaScreenState extends State<MatutinaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xffBC9210),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: ((context) =>
                              const MatutinaDetailScreen())));
                },
                child: Container(
                  height: 180,
                  width: 140,
                  decoration: BoxDecoration(
                      color: const Color(0xffBC9210),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(blurRadius: 5, color: Colors.black12)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/woman.png'),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Damas',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 180,
                  width: 140,
                  decoration: BoxDecoration(
                      color: const Color(0xffBC9210),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: const [
                        BoxShadow(blurRadius: 5, color: Colors.black12)
                      ]),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/images/man.png'),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'Adultos',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
