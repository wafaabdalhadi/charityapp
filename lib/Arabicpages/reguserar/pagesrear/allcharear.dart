// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/mainhomear.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/charityig.dart';

void main() {
  runApp(const Charitypagerear());
}

class Charitypagerear extends StatelessWidget {
  const Charitypagerear({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Charitypagerear(),
    );
  }
}

class Charitypagerear1 extends StatefulWidget {
  const Charitypagerear1({super.key});

  @override
  State<Charitypagerear1> createState() => _Charitypagerear1State();
}

class _Charitypagerear1State extends State<Charitypagerear1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'الجمعيات الخيرية',
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
                  MaterialPageRoute(
                      builder: (context) => const Firstpagerear()),
                );
              });
            }),
          ),
          body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Charityhomeguarri()),
                    );
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      image: const DecorationImage(
                          image: AssetImage('images/hope.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
        ));
  }
}
