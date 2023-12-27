// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_2/AdminCharity/manageorder.dart';

import '../Loginpage/main.dart';

void main(List<String> args) {
  runApp(const admin());
}

class admin extends StatelessWidget {
  const admin({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: admin1(),
    );
  }
}

class admin1 extends StatefulWidget {
  const admin1({super.key});

  @override
  State<admin1> createState() => _admin1State();
}

class _admin1State extends State<admin1> {
  TextEditingController infocontroller = TextEditingController();
  TextEditingController drivercontroller = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();

  String? info;
  String? driver;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 101, 163, 103),
            toolbarHeight: 80,
            elevation: 30,
            title: const Text(
              "Admin",
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            centerTitle: true,
            leading: BackButton(onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Loginpage()),
                );
              });
            }),
          ),
          backgroundColor: const Color.fromARGB(255, 213, 247, 219),
          body: Container(
            child: Form(
                key: key,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 30,
                        child: const Text(
                          'Total User & Order',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 30,
                        child: const Row(
                          children: [
                            Text(
                              '  Total User :',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 30,
                        child: const Row(
                          children: [
                            Text(
                              '  Total order :',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: double.infinity,
                        height: 30,
                        child: const Text(
                          'Total feedback',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 30,
                        child: const Row(
                          children: [
                            Text(
                              '  Total feedback :',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          child: Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Manageorder1()),
                                  );
                                },
                                color: const Color.fromARGB(255, 103, 143, 104),
                                splashColor: Colors.transparent,
                                child: const Text(
                                  'Manage Order ->',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          )),
                      const SizedBox(
                        height: 100,
                      ),
                      Container(
                          alignment: Alignment.bottomRight,
                          child: Column(
                            children: [
                              MaterialButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Loginpage()),
                                  );
                                },
                                color: const Color.fromARGB(255, 101, 163, 103),
                                splashColor: Colors.transparent,
                                child: const Text(
                                  'Exit',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          )),
                    ],
                  ),
                )),
          ),
        ));
  }

  Widget _buildCounter(String label, String count) {
    return Column(
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
        Text(
          count,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
