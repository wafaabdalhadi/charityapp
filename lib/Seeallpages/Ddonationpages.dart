// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../Donationspages/clothes.dart';
import '../Donationspages/food.dart';
import '../Donationspages/money.dart';
import '../homepagee/mainpage.dart';

void main() {
  runApp(const Donationpage());
}

class Donationpage extends StatelessWidget {
  const Donationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Donationpage1(),
    );
  }
}

class Donationpage1 extends StatefulWidget {
  const Donationpage1({super.key});

  @override
  State<Donationpage1> createState() => _Donationpage1State();
}

class _Donationpage1State extends State<Donationpage1> {
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
                  MaterialPageRoute(builder: (context) => const Clothes()),
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
                  MaterialPageRoute(builder: (context) => const Food()),
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
                  MaterialPageRoute(builder: (context) => const Money()),
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
