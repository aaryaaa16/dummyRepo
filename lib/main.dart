import 'package:flutter/material.dart';
import 'package:random_text_reveal/random_text_reveal.dart';
import 'package:sponsers/interface.dart';
import 'package:sponsers/interface1.dart';

void main() {
    runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Sponsors(),
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
    );
  }
}

class Sponsors extends StatefulWidget {
  const Sponsors({Key? key}) : super(key: key);

  @override
  State<Sponsors> createState() => _SponsorsState();
}

class _SponsorsState extends State<Sponsors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: RandomTextReveal(
          duration: const Duration(seconds: 2),
          text: "SPONSORS",
          style: TextStyle(
            fontFamily: 'Mars',
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/back.jpg'),
                fit: BoxFit.cover
              )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ui(),
              FloatingActionButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const ui1()),
                    );
                  }
              )
            ],
          )
        ],
      ),
    );
  }
}
