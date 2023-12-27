// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

import '../Loginpage/main.dart';

void main(List<String> args) {
  runApp(const charity());
}

class charity extends StatelessWidget {
  const charity({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: charity1(),
    );
  }
}

class charity1 extends StatefulWidget {
  const charity1({super.key});

  @override
  State<charity1> createState() => _charity1State();
}

class _charity1State extends State<charity1> {
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
              "Charity",
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
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 50,
                        child: const Text(
                          '  welcome',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 30,
                        child: const Text(
                          '      Charity name',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(),
                      Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    info = newValue!;
                                  },
                                  controller: infocontroller,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Information',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      hintText: 'Add information..'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                alignment: Alignment.topLeft,
                                width: double.infinity,
                                height: 30,
                                child: const Text(
                                  '      Driver',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    driver = newValue!;
                                  },
                                  controller: drivercontroller,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Driver name',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      hintText: 'Add driver..'),
                                ),
                              ),
                              MaterialButton(
                                onPressed: () {
                                  if (key.currentState!.validate()) {
                                    key.currentState!.save();
                                    print(info);
                                    print(driver);
                                    print('validate');
                                  }
                                },
                                color: const Color.fromARGB(255, 101, 163, 103),
                                splashColor: Colors.transparent,
                                child: const Text(
                                  'save',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
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
}
