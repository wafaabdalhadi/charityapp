// ignore_for_file: avoid_unnecessary_containers, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Loginguestpage/Mainpagegeast.dart';

import '../mainpagearguest.dart';

void main() {
  runApp(const Langdrawar1());
}

class Langdrawar1 extends StatelessWidget {
  const Langdrawar1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Langdrawar11(),
    );
  }
}

class Langdrawar11 extends StatefulWidget {
  const Langdrawar11({super.key});

  @override
  State<Langdrawar11> createState() => _Langdrawar11State();
}

class _Langdrawar11State extends State<Langdrawar11> {
  String? languagetype;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'اللغة',
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
                MaterialPageRoute(builder: (context) => const Firstpagear11()),
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
                alignment: Alignment.centerRight,
                child: const Text(
                  "إختر اللغة ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              RadioListTile(
                title: const Text(
                  "Arabic",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                value: "Arabic",
                groupValue: languagetype,
                onChanged: (value) {
                  setState(() {
                    languagetype = value;
                  });
                },
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              RadioListTile(
                title: const Text(
                  "English",
                  textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
                value: "English",
                groupValue: languagetype,
                onChanged: (value) {
                  setState(() {
                    languagetype = value;
                  });
                },
                controlAffinity: ListTileControlAffinity.trailing,
              ),
              MaterialButton(
                onPressed: () {
                  if (languagetype == "Arabic") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Firstpagear11()),
                    );
                  } else if (languagetype == "English") {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Firstpage11()),
                    );
                  }
                },
                color: const Color.fromARGB(255, 101, 163, 103),
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const Text(
                  'تأكيد',
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
