// ignore_for_file: avoid_unnecessary_containers, library_private_types_in_public_api, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';

import 'calenderar.dart';

void main() {
  runApp(const Czakathguear1());
}

class Czakathguear1 extends StatelessWidget {
  const Czakathguear1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CzakathguearScreen(),
    );
  }
}

class CzakathguearScreen extends StatefulWidget {
  const CzakathguearScreen({super.key});

  @override
  _CzakathguearScreenState createState() => _CzakathguearScreenState();
}

class _CzakathguearScreenState extends State<CzakathguearScreen> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  double amountOfzakat = 0;
  double zakatAmount = 0;

  void calculateZakat() {
    setState(() {
      zakatAmount = (2.5 / 100 * amountOfzakat);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'حساب الزكاة',
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
                  MaterialPageRoute(
                      builder: (context) => const Calendarguear1()),
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
                          return 'المبلغ فارغ';
                        }

                        return null;
                      },
                      keyboardType: TextInputType.number,
                      onChanged: (value) {
                        amountOfzakat = double.tryParse(value) ?? 0;
                      },
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: const BorderSide(color: Colors.grey)),
                          label: const Text(
                            'المبلغ',
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
                    onPressed: calculateZakat,
                    color: const Color.fromARGB(255, 101, 163, 103),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: const Text(
                      'حساب الزكاة',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'واجب الزكاة عليك :${zakatAmount}شيكل',
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
