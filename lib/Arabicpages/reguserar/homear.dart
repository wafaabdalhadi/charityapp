// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/allcharear.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/allclorear.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/alllarear.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/charityig.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/clothesrear.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/foodrear.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/pagesrear/moneyrear.dart';

void main() {
  runApp(const Homepagear1());
}

class Homepagear1 extends StatelessWidget {
  const Homepagear1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepagear(),
    );
  }
}

class Homepagear extends StatefulWidget {
  const Homepagear({super.key});

  @override
  State<Homepagear> createState() => _Homepagear();
}

class _Homepagear extends State<Homepagear> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Container(
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Donationpagerear1()),
                            );
                          });
                        },
                        child: const Text(
                          '<إظهار الكل  ',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Text(
                        'التبرعات  ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Moneyrear()),
                            );
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                image: const DecorationImage(
                                    image: AssetImage('images/moneey.jpg'),
                                    fit: BoxFit.cover)),
                            child: const Text(
                              'المال',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Foodrear()),
                            );
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                image: const DecorationImage(
                                    image: AssetImage('images/food.jpg'),
                                    fit: BoxFit.cover)),
                            child: const Text(
                              'الطعام',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Clothesrear()),
                            );
                          },
                          child: Container(
                            alignment: Alignment.bottomCenter,
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                image: const DecorationImage(
                                    image: AssetImage('images/clothes.jpg'),
                                    fit: BoxFit.cover)),
                            child: const Text(
                              'الملابس',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
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
                        child: const Text(
                          '<إظهار الكل',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Text(
                        'الجمعيات الخيرية  ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            height: 150,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            height: 150,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Charityhomeguarri()),
                              );
                            });
                          },
                          child: Container(
                            width: 150,
                            height: 150,
                            decoration: BoxDecoration(
                                border: Border.all(),
                                image: const DecorationImage(
                                    image: AssetImage('images/hope.jpg'),
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          setState(() {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Latestpagerear()),
                            );
                          });
                        },
                        child: const Text(
                          '<إظهار الكل',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const Text(
                        'أحدث الأخبار  ',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Row(
                      children: [
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            height: 150,
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: 150,
                            height: 150,
                          ),
                        ),
                        const SizedBox(width: 10),
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
                ],
              ),
            ),
          ),
        ));
  }
}
