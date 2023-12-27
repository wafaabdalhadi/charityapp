// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print

import 'dart:async';

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Foodrear1());
}

class Foodrear1 extends StatelessWidget {
  const Foodrear1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Foodrear(),
    );
  }
}

class Foodrear extends StatefulWidget {
  const Foodrear({super.key});

  @override
  State<Foodrear> createState() => _FoodrearState();
}

class _FoodrearState extends State<Foodrear> {
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
              'التبرع بالطعام',
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
                              image: AssetImage('images/df1.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage('images/df2.jpg'),
                              fit: BoxFit.cover)),
                    ),
                    Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          image: const DecorationImage(
                              image: AssetImage('images/df3.jpg'),
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
                  " ساعدنا في مكافحة الجوع وإحداث فرق في مجتمعنا. التبرع بالمواد الغذائية غير القابلة للتلف لدعم المحتاجين",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 12),
                child: const Text(
                  "معًا، يمكننا أن نضمن ألا ينام أحد جائعًا",
                  textDirection: TextDirection.rtl,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
              )
            ],
          ),
        ));
  }
}
