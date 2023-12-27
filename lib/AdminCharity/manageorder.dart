// ignore_for_file: avoid_unnecessary_containers, file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_2/AdminCharity/admin.dart';

void main() {
  runApp(const Manageorder());
}

class Manageorder extends StatelessWidget {
  const Manageorder({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Manageorder1(),
    );
  }
}

class Manageorder1 extends StatefulWidget {
  const Manageorder1({super.key});

  @override
  State<Manageorder1> createState() => _Manageorder1State();
}

class _Manageorder1State extends State<Manageorder1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Orders',
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
                MaterialPageRoute(builder: (context) => const admin1()),
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
                    "Username:Amr                                            Type of donation : clothes                            Time:10:30                             Date:12-1-2024",
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
