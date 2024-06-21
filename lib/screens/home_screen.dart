import 'package:flutter/material.dart';
import 'package:iasd_adult_app/constant/constants.dart';
import 'package:iasd_adult_app/screens/leccion_screen.dart';
import 'package:iasd_adult_app/screens/matutina_screen.dart';
import 'package:iasd_adult_app/screens/reavivados_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 36),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              mainAxisSpacing: 52,
              crossAxisSpacing: 36,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MatutinaScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors().primary,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/matutina.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Matutina',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const ReavivadosScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors().primary,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/reavivados.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Reavivados',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const LeccionScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors().primary,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/leccion.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Leccion',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MatutinaScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors().primary,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/biblia.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Biblia',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MatutinaScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors().primary,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/himnario.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Himnario',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => const MatutinaScreen())));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        color: AppColors().primary,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: const [
                          BoxShadow(blurRadius: 5, color: Colors.black12)
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/images/pedidos.png'),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text(
                          'Pedidos',
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
          ),
        ],
      ),
    );
  }
}
