// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Charityhome1());
}

class Charityhome1 extends StatelessWidget {
  const Charityhome1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Charityhome(),
    );
  }
}

class Charityhome extends StatefulWidget {
  const Charityhome({super.key});

  @override
  State<Charityhome> createState() => _CharityhomeState();
}

class _CharityhomeState extends State<Charityhome> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            title: const Text(
              'Seeds of Hope',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            elevation: 30,
            centerTitle: true,
            leading: BackButton(onPressed: () {
              setState(() {
                Navigator.of(context).pop();
              });
            }),
            backgroundColor: const Color.fromARGB(255, 101, 163, 103),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Seeds of Hope Charitable Society',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'A charitable association in Jericho, which aims to help others in social and other aspects, such as changing the lives of others and supporting others through financial support to improve the lives of others. In other ways, surplus clothing can be donated, or non-perishable food can be donated.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Phone number : +97022324040',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
