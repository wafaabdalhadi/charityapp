// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api, file_names, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

import 'calenderguest.dart';

void main() {
  runApp(const Czakatggue1());
}

class Czakatggue1 extends StatelessWidget {
  const Czakatggue1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CzakatggueScreen(),
    );
  }
}

class CzakatggueScreen extends StatefulWidget {
  const CzakatggueScreen({super.key});

  @override
  _CzakatggueScreenState createState() => _CzakatggueScreenState();
}

class _CzakatggueScreenState extends State<CzakatggueScreen> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  double amountOfzakatg = 0;
  double zakatAmountg = 0;

  void calculateZakatg() {
    setState(() {
      zakatAmountg = (2.577 / 100 * amountOfzakatg);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Calculate Zakat',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
            ),
            backgroundColor: const Color.fromARGB(255, 101, 163, 103),
            toolbarHeight: 80,
            centerTitle: true,
            elevation: 30,
            leading: BackButton(onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Calendargue1()),
                );
              });
            }),
          ),
          body: Container(
            child: Form(
              key: key,
              child: Column(
                children: [
                  const SizedBox(
                    height: 15,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'amount is empty';
                        }

                        return null;
                      },
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        amountOfzakatg = double.tryParse(value) ?? 0;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.grey)),
                          label: const Text(
                            'The amount',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                          hintText: '..'),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: calculateZakatg,
                    color: const Color.fromARGB(255, 101, 163, 103),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: const Text(
                      'Calculate Zakat',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Your Zakat obligation is: ${zakatAmountg} NIS',
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
