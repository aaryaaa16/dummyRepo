import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ui1 extends StatefulWidget {
  const ui1({Key? key}) : super(key: key);

  @override
  State<ui1> createState() => _ui1State();
}

class _ui1State extends State<ui1> {
  final images = [
    'assets/background.jpeg',
    'assets/background.jpeg',
    'assets/background.jpeg',
    'assets/background.jpeg'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/back.jpg'),
                  fit: BoxFit.cover
              )
          ),
        ),
        CupertinoScrollbar(
          thickness: 6.0,
          thicknessWhileDragging: 20.0,
          radius: const Radius.circular(34.0),
          radiusWhileDragging: Radius.zero,
          // thumbVisibility: true,
          // controller: _firstController,
          child: ListView.builder(
            // controller: _firstController,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(right: 50, left: 50, top: 15, bottom: 15),
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xFFFFFFFF).withAlpha(60),
                            blurRadius: 20.0,
                            spreadRadius: 0.0,
                            offset: const Offset(
                              0.0,
                              3.0,
                            )
                          )
                        ],
                        image: DecorationImage(
                            image: AssetImage(images[index]),
                            fit: BoxFit.fill
                        )
                    ),
                    child: GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                              child: Image.asset(
                                images[index],
                                width: 200,
                                height: 200,
                                fit: BoxFit.cover,
                              ),
                            );
                          }
                        );
                      },
                    ),
                  ),
                );
              }
          ),
        ),
      ],
    );
  }
}
