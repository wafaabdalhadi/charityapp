// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Drawwer/Howwework.dart';
import 'package:flutter_application_2/Drawwer/myorder.dart';

import 'package:flutter_application_2/Drawwer/ratte.dart';
import 'package:flutter_application_2/homepagee/createorder.dart';
import 'package:flutter_application_2/homepagee/homapage.dart';
import 'package:flutter_application_2/homepagee/logoutloading.dart';

import '../Drawwer/Calculatezakatt/Currency.dart';

import '../Drawwer/Lang.dart';
import '../Seeallpages/Charitiespages.dart';

void main() {
  runApp(const Firstpage());
}

class Firstpage extends StatelessWidget {
  const Firstpage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pagees(),
    );
  }
}

class Pagees extends StatefulWidget {
  const Pagees({Key? key}) : super(key: key);

  @override
  State<Pagees> createState() => _PageesState();
}

class _PageesState extends State<Pagees> {
  int currentindex = 0;
  List pagelist = [const Homepage(), const Order()];
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
                Container(
                  color: Colors.black,
                  child: const UserAccountsDrawerHeader(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 101, 163, 103),
                      ),
                      currentAccountPicture: CircleAvatar(),
                      accountName: Text(
                        'rayah',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      accountEmail: Text(
                        'ray@gmail.com',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    children: [
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
                                      builder: (context) => const Firstpage()),
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
                                          const Charitypage1()),
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
                                      builder: (context) => const Currency1()),
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
                          const Icon(Icons.shopping_bag),
                          MaterialButton(
                            onPressed: () {
                              setState(() {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Myorder1()),
                                );
                                print('myorder');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'My orders',
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
                                      builder: (context) => const Ratepage()),
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
                                      builder: (context) => const Howwe1()),
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
                                      builder: (context) => const Langdraw1()),
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
                      const SizedBox(
                        height: 150,
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
        bottomNavigationBar: BottomNavigationBar(
            backgroundColor: const Color.fromARGB(255, 101, 163, 103),
            selectedItemColor: Colors.black,
            unselectedFontSize: 15,
            unselectedItemColor: Colors.white,
            selectedFontSize: 15,
            currentIndex: currentindex,
            onTap: (value) {
              setState(() {
                currentindex = value;
              });
            },
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'Create order',
              ),
            ]),
        body: pagelist[currentindex],
      ),
    );
  }
}
