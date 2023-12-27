// ignore_for_file: avoid_unnecessary_containers, file_names, avoid_print

import 'package:flutter/material.dart';

import 'package:flutter_application_2/Arabicpages/reguserar/mainhomear.dart';

import 'zakattyperear.dart';

void main() {
  runApp(const Currencyrear());
}

class Currencyrear extends StatelessWidget {
  const Currencyrear({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Currencyrear1(),
    );
  }
}

class Currencyrear1 extends StatefulWidget {
  const Currencyrear1({super.key});

  @override
  State<Currencyrear1> createState() => _Currencyrear1State();
}

class _Currencyrear1State extends State<Currencyrear1> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  List<String> currencyOptions = ["شيكل"];

  String? currency;

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
                MaterialPageRoute(builder: (context) => const Firstpagerear()),
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
                    alignment: Alignment.centerRight,
                    child: const Text(
                      '..الخطوة الأولى',
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
                          return 'يرجى اختيار العملة أولا';
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
                        labelText: 'العملة',
                        hintText: 'إختر العملة',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: MaterialButton(
                      onPressed: () {
                        setState(
                          () {
                            if (key.currentState!.validate()) {
                              key.currentState!.save();
                              print(currency);
                              print('validate');
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Zakattyperear1()),
                            );
                          },
                        );
                      },
                      color: const Color.fromARGB(255, 101, 163, 103),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: const Text(
                        '<-التالي',
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
