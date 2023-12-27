// ignore_for_file: avoid_unnecessary_containers, file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Loginguestpage/Mainpagegeast.dart';

import 'zakatguest/zakatypeguest.dart';

void main() {
  runApp(const Currencygu1());
}

class Currencygu1 extends StatelessWidget {
  const Currencygu1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Currencygu1(),
    );
  }
}

class Currencygu11 extends StatefulWidget {
  const Currencygu11({super.key});

  @override
  State<Currencygu11> createState() => _Currencygu11State();
}

class _Currencygu11State extends State<Currencygu11> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  List<String> currencyOptions = ["NIS"];

  String? currency;

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
                MaterialPageRoute(builder: (context) => const Firstpage11()),
              );
            });
          }),
        ),
        body: Container(
          child: Form(
            key: key,
            child: Container(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'First step..',
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: DropdownButtonFormField<String>(
                      value: currency,
                      onChanged: (newValue) {
                        setState(() {
                          currency = newValue;
                        });
                      },
                      onSaved: (newValue) {
                        currency = newValue!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Currency is empty';
                        }
                        return null;
                      },
                      items: currencyOptions.map((currency) {
                        return DropdownMenuItem<String>(
                          value: currency,
                          child: Text(currency),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        labelText: 'Currency',
                        hintText: 'Select Currency',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: MaterialButton(
                      onPressed: () {
                        setState(
                          () {
                            if (key.currentState!.validate()) {
                              key.currentState!.save();
                              print(currency);
                              print('validate');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Zakattypegu1()),
                              );
                            }
                          },
                        );
                      },
                      color: const Color.fromARGB(255, 101, 163, 103),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: const Text(
                        'Next->',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
