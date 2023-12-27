// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../mainpagearguest.dart';
import 'clothesar.dart';
import 'foodar.dart';
import 'moneyar.dart';

void main() {
  runApp(const Donationpagear11());
}

class Donationpagear11 extends StatelessWidget {
  const Donationpagear11({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Donationpagear111(),
    );
  }
}

class Donationpagear111 extends StatefulWidget {
  const Donationpagear111({super.key});

  @override
  State<Donationpagear111> createState() => _Donationpagear111State();
}

class _Donationpagear111State extends State<Donationpagear111> {
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
                MaterialPageRoute(builder: (context) => const Firstpagear11()),
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
                  MaterialPageRoute(builder: (context) => const Clothesar11()),
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
                  MaterialPageRoute(builder: (context) => const Foodar11()),
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
                  MaterialPageRoute(builder: (context) => const Moneyar11()),
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
