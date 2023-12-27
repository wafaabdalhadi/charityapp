// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/drawerar/calcreaqr/currencyrear.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/drawerar/langar.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/drawerar/myorderar.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/allcharear.dart';
import '../loginguestarr/drawwerar/logoutar.dart';
import 'drawerar/howrear.dart';
import 'drawerar/raterear.dart';
import 'homear.dart';
import 'orderar.dart';

void main() {
  runApp(const Firstpagerear());
}

class Firstpagerear extends StatelessWidget {
  const Firstpagerear({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pageesrear(),
    );
  }
}

class Pageesrear extends StatefulWidget {
  const Pageesrear({Key? key}) : super(key: key);

  @override
  State<Pageesrear> createState() => _PageesrearState();
}

class _PageesrearState extends State<Pageesrear> {
  int currentindex = 0;
  List pagelist = [const Homepagear(), const Orderar()];
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
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
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
                                          const Firstpagerear()),
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
                                          const Charitypagerear1()),
                                );
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
                                          const Currencyrear1()),
                                );
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
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Myorderar1()),
                                );
                                print("myorder");
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'طلباتي',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ),
                          const Icon(
                            Icons.shopping_bag,
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
                                          const Raterearpage()),
                                );
                                print('rate');
                              });
                            },
                            highlightColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            child: const Text(
                              'تقييم التطبيق',
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
                                      builder: (context) => const Howwerear1()),
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
                                          const Langdrawar1()),
                                );
                                print("lang");
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
                      const SizedBox(
                        height: 150,
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
                              'خروج',
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
              BottomNavigationBarItem(
                  icon: Icon(Icons.home), label: 'الصفحة الرئيسية'),
              BottomNavigationBarItem(
                icon: Icon(Icons.add),
                label: 'إنشاء طلب',
              ),
            ]),
        body: pagelist[currentindex],
      ),
    );
  }
}
