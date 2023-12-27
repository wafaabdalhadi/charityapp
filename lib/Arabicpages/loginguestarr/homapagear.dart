// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'chariryar/charhomegu.dart';
import 'chariryar/charityar.dart';
import 'donationar/alldonar.dart';
import 'donationar/clothesar.dart';
import 'donationar/foodar.dart';
import 'donationar/moneyar.dart';
import 'latestar/latestnewar.dart';

void main() {
  runApp(const Homepagear111());
}

class Homepagear111 extends StatelessWidget {
  const Homepagear111({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Homepagear11(),
    );
  }
}

class Homepagear11 extends StatefulWidget {
  const Homepagear11({super.key});

  @override
  State<Homepagear11> createState() => _Homepagear11();
}

class _Homepagear11 extends State<Homepagear11> {
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
                                      const Donationpagear11()),
                            );
                          });
                        },
                        child: const Text(
                          "<إظهار الكل",
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
                                  builder: (context) => const Moneyar11()),
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
                                  builder: (context) => const Foodar11()),
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
                                  builder: (context) => const Clothesar11()),
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
                        const SizedBox(
                          width: 10,
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
                                      const Charitypagear11()),
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
                        const SizedBox(width: 10),
                        InkWell(
                          onTap: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const Charityhomeguar()),
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
                        const SizedBox(width: 10),
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
                                  builder: (context) => const Latestpagear11()),
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
                        const SizedBox(
                          width: 10,
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
