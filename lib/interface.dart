import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_glow/flutter_glow.dart';

class ui extends StatefulWidget {
  const ui({Key? key}) : super(key: key);

  @override
  State<ui> createState() => _uiState();
}

class _uiState extends State<ui> {
  final images = [
    // 'assets/asset1.png',
    // 'assets/asset2.jpg',
    // 'assets/asset3.jpg',
    // 'assets/asset4.jpg'
  ];

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(right: 50, left: 50, top: 15, bottom: 15),
            child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                GlassmorphicContainer(
                  width: 350,
                  height: 400,
                  borderRadius: 20,
                  blur: 8,
                  alignment: Alignment.bottomCenter,
                  border: 2,
                  linearGradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color(0xFFffffff).withOpacity(0.10),
                      Color(0xFFFFFFFF).withOpacity(0.25)
                    ],
                      stops: [
                        0.1,
                        1,
                      ]
                  ),
                  borderGradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color(0xFFffffff).withOpacity(0.10),
                        Color(0xFFFFFFFF).withOpacity(0.25)
                      ]
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Lottie.asset(
                          'assets/soon1.json',
                          width: 280
                      ),
                      SizedBox(height: 10),
                      GlowText(
                        'COMING SOON',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: 'Oxanium'
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
    );
  }
}
