// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../homepagee/mainpage.dart';

void main() {
  runApp(const Latestpage());
}

class Latestpage extends StatelessWidget {
  const Latestpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Latestpage1(),
    );
  }
}

class Latestpage1 extends StatefulWidget {
  const Latestpage1({super.key});

  @override
  State<Latestpage1> createState() => _Latestpage1State();
}

class _Latestpage1State extends State<Latestpage1> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Latest news',
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
