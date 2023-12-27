// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Loginpage/main.dart';

import 'Arabicpages/loginarpage.dart';

void main() {
  runApp(const Language1());
}

class Language extends StatelessWidget {
  const Language({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Language1(),
    );
  }
}

class Language1 extends StatefulWidget {
  const Language1({super.key});

  @override
  State<Language1> createState() => _Language1State();
}

class _Language1State extends State<Language1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
              alignment: Alignment.center,
              color: const Color.fromARGB(255, 213, 247, 219),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Image(
                    image: AssetImage("images/helptitle.png"),
                    width: 300,
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Loginpagear1()),
                            );
                          });
                        },
                        color: const Color.fromARGB(255, 101, 163, 103),
                        splashColor: Colors.transparent,
                        child: const Text(
                          'Arabic',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Loginpage1()),
                            );
                          });
                        },
                        color: const Color.fromARGB(255, 101, 163, 103),
                        splashColor: Colors.transparent,
                        child: const Text(
                          'English',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ],
                  ))
                ],
              ))),
    );
  }
}
