// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, file_names

import 'dart:async';

import 'package:flutter/material.dart';

import 'package:flutter_application_2/chooselang.dart';

void main() {
  runApp(const MyWidget());
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Totry(),
    );
  }
}

class Totry extends StatefulWidget {
  const Totry({super.key});

  @override
  State<Totry> createState() => _TotryState();
}

class _TotryState extends State<Totry> {
  @override
  void initState() {
    super.initState();
    goto();
  }

  void goto() async {
    await Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Language()),
      );
    });
  }

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
                    width: 250,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        width: 25,
                        height: 25,
                        child: const CircularProgressIndicator(
                          color: Colors.black,
                          backgroundColor: Color.fromARGB(255, 213, 247, 219),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Container(
                        child: const Text(
                          "Loading ...",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ))
                ],
              )),
        ));
  }
}
