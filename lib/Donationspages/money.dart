// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Money1());
}

class Money1 extends StatelessWidget {
  const Money1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Money(),
    );
  }
}

class Money extends StatefulWidget {
  const Money({super.key});

  @override
  State<Money> createState() => _MoneyState();
}

class _MoneyState extends State<Money> {
  final PageController _pageController = PageController();
  int _currentPage = 0;
  late Timer _timer;

  @override
  void initState() {
    super.initState();

    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      final nextPage = (_currentPage + 1) % 3;
      _pageController.animateToPage(
        nextPage,
        duration: const Duration(seconds: 3),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            title: const Text(
              'Money donation',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            centerTitle: true,
            elevation: 30,
            leading: BackButton(onPressed: () {
              setState(() {
                Navigator.of(context).pop();
              });
            }),
            backgroundColor: const Color.fromARGB(255, 101, 163, 103),
          ),
          body: Column(
            children: [
              Container(
                width: double.infinity,
                height: 300,
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentPage = index;
                    });
                  },
                  children: [
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage('images/dm1.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage('images/dm2.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage('images/dm3.png'),
                              fit: BoxFit.cover)),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: const Text(
                  'Make a financial impact today! Your monetary donations help sustain our mission and provide crucial support to those in need.',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: const Text(
                  "Every currency you give goes directly towards making a positive change in our community.",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ));
  }
}
