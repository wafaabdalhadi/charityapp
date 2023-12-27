// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Donationspages/charityhome.dart';

import '../homepagee/mainpage.dart';

void main() {
  runApp(const Charitypage());
}

class Charitypage extends StatelessWidget {
  const Charitypage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Charitypage(),
    );
  }
}

class Charitypage1 extends StatefulWidget {
  const Charitypage1({super.key});

  @override
  State<Charitypage1> createState() => _Charitypage1State();
}

class _Charitypage1State extends State<Charitypage1> {
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
                  MaterialPageRoute(builder: (context) => const Firstpage()),
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
                        builder: (context) => const Charityhome()),
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
