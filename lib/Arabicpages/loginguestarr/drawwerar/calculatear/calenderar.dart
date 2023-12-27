// ignore_for_file: avoid_unnecessary_containers, avoid_print, file_names

import 'package:flutter/material.dart';

import 'calculategar.dart';
import 'calculatehijar.dart';
import 'zakattypear.dart';

void main() {
  runApp(const Calendarguear());
}

class Calendarguear extends StatelessWidget {
  const Calendarguear({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calendarguear1(),
    );
  }
}

class Calendarguear1 extends StatefulWidget {
  const Calendarguear1({super.key});

  @override
  State<Calendarguear1> createState() => _Calendarguear1State();
}

class _Calendarguear1State extends State<Calendarguear1> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  List<String> calendarOptions = [
    "(%2.577)السنة الميلادية",
    "(%2.5)السنة الهجرية"
  ];

  String? calendar;

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
                MaterialPageRoute(builder: (context) => const Zakattypeguar1()),
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
                      '..الخطوة الثالثة',
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
                      value: calendar,
                      onChanged: (newValue) {
                        setState(() {
                          calendar = newValue;
                        });
                      },
                      onSaved: (newValue) {
                        calendar = newValue!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'نوع اتقويم فارغ';
                        }
                        return null;
                      },
                      items: calendarOptions.map((calendar) {
                        return DropdownMenuItem<String>(
                          value: calendar,
                          child: Text(calendar),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        labelText: 'التقويم',
                        hintText: 'إختر نوع التقويم',
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
                              if (calendar == "(%2.577)السنة الميلادية") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CzakathguearScreen()),
                                );
                              } else if (calendar == "(%2.5)السنة الهجرية") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CzakatgguearScreen()),
                                );
                              }
                            }
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
