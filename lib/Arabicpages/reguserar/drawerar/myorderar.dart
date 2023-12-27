// ignore_for_file: avoid_unnecessary_containers, file_names, avoid_print

import 'package:flutter/material.dart';

import '../mainhomear.dart';

void main() {
  runApp(const Myorderar());
}

class Myorderar extends StatelessWidget {
  const Myorderar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Myorderar1(),
    );
  }
}

class Myorderar1 extends StatefulWidget {
  const Myorderar1({super.key});

  @override
  State<Myorderar1> createState() => _Myorderar1State();
}

class _Myorderar1State extends State<Myorderar1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'طلباتي',
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
                MaterialPageRoute(builder: (context) => const Pageesrear()),
              );
            });
          }),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 212, 211, 211),
                    borderRadius: BorderRadius.circular(20)),
                child: ListTile(
                  onTap: () {
                    setState(() {
                      print("ontap");
                    });
                  },
                  textColor: Colors.black,
                  title: const Text(
                    "order#1",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                  ),
                  subtitle: const Text(
                    "Type of donation : clothes             Time:10:30                             Date:12-1-2024",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                  leading: const Icon(Icons.arrow_back_ios),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
