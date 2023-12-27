// ignore_for_file: avoid_unnecessary_containers, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Loginguestpage/Drawwerr/Work.dart';

import 'package:flutter_application_2/Loginpage/signuppage.dart';

import 'package:flutter_application_2/homepagee/homapage.dart';
import 'package:flutter_application_2/homepagee/logoutloading.dart';

import 'Drawwerr/Calculatezaka.dart';
import 'Drawwerr/Charitiess.dart';
import 'Drawwerr/Language.dart';
import 'Drawwerr/Rateeee.dart';
import 'homee.dart';

void main() {
  runApp(const Firstpage11());
}

class Firstpage11 extends StatelessWidget {
  const Firstpage11({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pagees1(),
    );
  }
}

class Pagees1 extends StatefulWidget {
  const Pagees1({Key? key}) : super(key: key);

  @override
  State<Pagees1> createState() => _Pagees1State();
}

class _Pagees1State extends State<Pagees1> {
  int currentindex = 1;
  List pagelist = [const Homepage()];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
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
                        children: [
                          const Icon(Icons.home),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                print('home');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Firstpage11()),
                                );
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'Home page',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.volunteer_activism),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Charitypage111()),
                                );
                                print('charity');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'Charities',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.calculate),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Currencygu11()),
                                );
                                print('calculate');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'Calculate Zakat',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.share),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                print('share');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'Share',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.star_rate),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Ratepage11()),
                                );
                                print('rate');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'Rate App',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.help),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Howwe11()),
                                );
                                print('how');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'How we work ?',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.translate),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Langdraw11()),
                                );
                                print('lang');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'Language',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(Icons.person_add),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Signup()),
                                );
                                print('sign');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'Sign up',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 100,
                      ),
                      Row(
                        children: [
                          const Icon(Icons.logout),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                print('out');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Loadingouut()),
                                );
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'Logout',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          )
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
        body: const Homepage11(),
      ),
    );
  }
}
