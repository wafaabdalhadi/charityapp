// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, file_names

import 'dart:async';

import 'package:flutter/material.dart';
import '../../loginarpage.dart';

void main() {
  runApp(const Loadingouutar());
}

class Loadingouutar extends StatelessWidget {
  const Loadingouutar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loadingouutar1(),
    );
  }
}

class Loadingouutar1 extends StatefulWidget {
  const Loadingouutar1({super.key});

  @override
  State<Loadingouutar1> createState() => _Loadingouutar1State();
}

class _Loadingouutar1State extends State<Loadingouutar1> {
  @override
  void initState() {
    super.initState();
    gotos();
  }

  void gotos() async {
    await Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const Loginpagear1()),
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
                          "...جاري التحميل",
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
