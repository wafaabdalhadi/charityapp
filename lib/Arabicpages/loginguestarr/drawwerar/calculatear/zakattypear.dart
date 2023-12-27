// ignore_for_file: avoid_unnecessary_containers, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/loginguestarr/drawwerar/calculatear/calenderar.dart';

import 'currencyar.dart';

void main() {
  runApp(const Zakattypeguar());
}

class Zakattypeguar extends StatelessWidget {
  const Zakattypeguar({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Zakattypeguar1(),
    );
  }
}

class Zakattypeguar1 extends StatefulWidget {
  const Zakattypeguar1({super.key});

  @override
  State<Zakattypeguar1> createState() => _Zakattypeguar1State();
}

class _Zakattypeguar1State extends State<Zakattypeguar1> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  List<String> zakatOptions = ["مال"];

  String? zakat;

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
                MaterialPageRoute(builder: (context) => const Currencyar1()),
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
                      '..الخطوة الثانية',
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
                      value: zakat,
                      onChanged: (newValue) {
                        setState(() {
                          zakat = newValue;
                        });
                      },
                      onSaved: (newValue) {
                        zakat = newValue!;
                      },
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'نوع الزكاة فارغ';
                        }
                        return null;
                      },
                      items: zakatOptions.map((zakat) {
                        return DropdownMenuItem<String>(
                          value: zakat,
                          child: Text(zakat),
                        );
                      }).toList(),
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: const BorderSide(color: Colors.grey),
                        ),
                        labelText: 'نوع الزكاة',
                        hintText: 'إختر نوع الزكاة',
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
                              print(zakat);
                              print('validate');
                            }
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Calendarguear1()),
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
