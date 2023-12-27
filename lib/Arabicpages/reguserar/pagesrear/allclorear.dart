// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/mainhomear.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/clothesrear.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/moneyrear.dart';

import 'foodrear.dart';

void main() {
  runApp(const Donationpagerear());
}

class Donationpagerear extends StatelessWidget {
  const Donationpagerear({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Donationpagerear1(),
    );
  }
}

class Donationpagerear1 extends StatefulWidget {
  const Donationpagerear1({super.key});

  @override
  State<Donationpagerear1> createState() => _Donationpagerear1State();
}

class _Donationpagerear1State extends State<Donationpagerear1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'التبرعات',
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
                MaterialPageRoute(builder: (context) => const Firstpagerear()),
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
                  MaterialPageRoute(builder: (context) => const Clothesrear()),
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
                  'الملابس',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Foodrear()),
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
                  'الطعام',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Moneyrear()),
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
                  'المال',
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
