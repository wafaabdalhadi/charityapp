// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/mainhomear.dart';

void main() {
  runApp(const Latestpagerear());
}

class Latestpagerear extends StatelessWidget {
  const Latestpagerear({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Latestpagerear1(),
    );
  }
}

class Latestpagerear1 extends StatefulWidget {
  const Latestpagerear1({super.key});

  @override
  State<Latestpagerear1> createState() => _Latestpagerear1State();
}

class _Latestpagerear1State extends State<Latestpagerear1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'أحدث الأخبار',
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
              onTap: () {},
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('images/neews.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
