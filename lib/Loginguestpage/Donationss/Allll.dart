// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Loginguestpage/Donationss/Clo.dart';
import 'package:flutter_application_2/Loginguestpage/Donationss/Mon.dart';
import 'package:flutter_application_2/Loginguestpage/Mainpagegeast.dart';

import 'Foo.dart';

void main() {
  runApp(const Donationpage11());
}

class Donationpage11 extends StatelessWidget {
  const Donationpage11({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Donationpage111(),
    );
  }
}

class Donationpage111 extends StatefulWidget {
  const Donationpage111({super.key});

  @override
  State<Donationpage111> createState() => _Donationpage111State();
}

class _Donationpage111State extends State<Donationpage111> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Donations',
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
                  MaterialPageRoute(builder: (context) => const Clothes11()),
                );
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('images/clothes.jpg'),
                        fit: BoxFit.cover)),
                child: const Text(
                  'Clothes',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Food11()),
                );
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('images/food.jpg'),
                        fit: BoxFit.cover)),
                child: const Text(
                  'Food',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Money11()),
                );
              },
              child: Container(
                alignment: Alignment.bottomCenter,
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('images/moneey.jpg'),
                        fit: BoxFit.cover)),
                child: const Text(
                  'Money',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
