// ignore_for_file: avoid_unnecessary_containers, avoid_print, file_names

import 'package:flutter/material.dart';

import 'calculategar.dart';
import 'calculatehiar.dart';
import 'zakatypeguest.dart';

void main() {
  runApp(const Calendargue());
}

class Calendargue extends StatelessWidget {
  const Calendargue({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calendargue1(),
    );
  }
}

class Calendargue1 extends StatefulWidget {
  const Calendargue1({super.key});

  @override
  State<Calendargue1> createState() => _Calendargue1State();
}

class _Calendargue1State extends State<Calendargue1> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  List<String> calendarOptions = [
    "Gregorian year (%2.577)",
    "Hijri year(%2.5)"
  ];

  String? calendar;

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
                MaterialPageRoute(builder: (context) => const Zakattypegu1()),
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
                      'Third step..',
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
                          return 'Calendar type is empty';
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
                        labelText: 'Calendar',
                        hintText: 'Select Calendar',
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
                              if (calendar == "Gregorian year (%2.577)") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const CzakatggueScreen()),
                                );
                              } else if (calendar == "Hijri year(%2.5)") {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Czakathgue1()),
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
