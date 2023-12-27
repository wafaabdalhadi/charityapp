// ignore_for_file: avoid_unnecessary_containers, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/loginguestarr/drawwerar/logoutar.dart';
import 'package:flutter_application_2/Arabicpages/signuparpage.dart';
import 'package:flutter_application_2/homepagee/homapage.dart';
import 'chariryar/charityar.dart';
import 'drawwerar/calculatear/currencyar.dart';
import 'drawwerar/howworkar.dart';
import 'drawwerar/lanar.dart';
import 'drawwerar/ratear.dart';
import 'homapagear.dart';

void main() {
  runApp(const Firstpagear11());
}

class Firstpagear11 extends StatelessWidget {
  const Firstpagear11({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pageesar1(),
    );
  }
}

class Pageesar1 extends StatefulWidget {
  const Pageesar1({Key? key}) : super(key: key);

  @override
  State<Pageesar1> createState() => _Pageesar1State();
}

class _Pageesar1State extends State<Pageesar1> {
  int currentindex = 1;
  List pagelist = [const Homepage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        endDrawer: Drawer(
          backgroundColor: const Color.fromARGB(255, 101, 163, 103),
          width: 250,
          elevation: 30,
          child: Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                print('home');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Firstpagear11()),
                                );
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'الصفحة الرئيسية',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.home,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Charitypagear111()),
                                );
                                print('charity');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'الجمعيات الخيرية',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.volunteer_activism,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Currencyar1()),
                                );
                                print('calculate');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'حساب الزكاة',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.calculate,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                print('share');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'مشاركة',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.share,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Ratepagear1()),
                                );
                                print('rate');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              "تقييم التطبيق",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.star_rate,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Howwear11()),
                                );
                                print('how');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'كيف نعمل ؟',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.help,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Langdrawar11()),
                                );
                                print('lang');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'اللغة',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.translate,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signupar()),
                                );
                                print('sign');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'التسجيل الآن',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.person_add,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                print('out');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Loadingouutar()),
                                );
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'تسجيل الخروج',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.logout,
                            textDirection: TextDirection.rtl,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 101, 163, 103),
          toolbarHeight: 80,
          title: Image.asset(
            "images/helptitle.png",
            width: 200,
            color: Colors.white,
          ),
          centerTitle: true,
          elevation: 30,
        ),
        body: const Homepagear11(),
      ),
    );
  }
}
