// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';

import '../Arabicpages/reguserar/mainhomear.dart';
import '../homepagee/mainpage.dart';

void main() {
  runApp(const Langdraw());
}

class Langdraw extends StatelessWidget {
  const Langdraw({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Langdraw1(),
    );
  }
}

class Langdraw1 extends StatefulWidget {
  const Langdraw1({super.key});

  @override
  State<Langdraw1> createState() => _Langdraw1State();
}

class _Langdraw1State extends State<Langdraw1> {
  String? languagetype;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Language',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
          ),
          backgroundColor: const Color.fromARGB(255, 101, 163, 103),
          toolbarHeight: 80,
          centerTitle: true,
          elevation: 30,
          leading: BackButton(onPressed: () {
            setState(() {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Firstpage()),
              );
            });
          }),
        ),
        body: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Text(
                  " Choose Language",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RadioListTile(
                  title: const Text(
                    "Arabic",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  value: "Arabic",
                  groupValue: languagetype,
                  onChanged: (value) {
                    setState(() {
                      languagetype = value;
                    });
                  }),
              RadioListTile(
                  title: const Text(
                    "English",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                  value: "English",
                  groupValue: languagetype,
                  onChanged: (value) {
                    setState(() {
                      languagetype = value;
                    });
                  }),
              MaterialButton(
                onPressed: () {
                  if (languagetype == "Arabic") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Firstpagerear()),
                    );
                  } else if (languagetype == "English") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Firstpage()),
                    );
                  }
                },
                color: const Color.fromARGB(255, 101, 163, 103),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const Text(
                  'Confirm',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
