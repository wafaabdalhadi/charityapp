// ignore_for_file: avoid_unnecessary_containers, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/reguserar/drawerar/calcreaqr/calcrearg.dart';

import 'calcgre.dart';
import 'zakattyperear.dart';

void main() {
  runApp(const Calendarrear());
}

class Calendarrear extends StatelessWidget {
  const Calendarrear({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calendarrear1(),
    );
  }
}

class Calendarrear1 extends StatefulWidget {
  const Calendarrear1({super.key});

  @override
  State<Calendarrear1> createState() => _Calendarrear1State();
}

class _Calendarrear1State extends State<Calendarrear1> {
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
                MaterialPageRoute(builder: (context) => const Zakattyperear1()),
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
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Czakatgrear1()),
                                  );
                                });
                              } else if (calendar == "(%2.5)السنة الهجرية") {
                                setState(() {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const CzakathrearScreen()),
                                  );
                                });
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
