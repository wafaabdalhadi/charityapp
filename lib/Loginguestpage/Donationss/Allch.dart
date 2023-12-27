// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Loginguestpage/Donationss/charityhomegue.dart';
import 'package:flutter_application_2/Loginguestpage/Mainpagegeast.dart';

void main() {
  runApp(const Charitypage11());
}

class Charitypage11 extends StatelessWidget {
  const Charitypage11({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Charitypage111(),
    );
  }
}

class Charitypage111 extends StatefulWidget {
  const Charitypage111({super.key});

  @override
  State<Charitypage111> createState() => _Charitypage111State();
}

class _Charitypage111State extends State<Charitypage111> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Charities',
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
                  MaterialPageRoute(builder: (context) => const Firstpage11()),
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
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Charityhomegu()),
                  );
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
