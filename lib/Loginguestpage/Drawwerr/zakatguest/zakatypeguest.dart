// ignore_for_file: avoid_unnecessary_containers, avoid_print, file_names

import 'package:flutter/material.dart';

import '../Calculatezaka.dart';
import 'calenderguest.dart';

void main() {
  runApp(const Zakattypegu());
}

class Zakattypegu extends StatelessWidget {
  const Zakattypegu({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Zakattypegu1(),
    );
  }
}

class Zakattypegu1 extends StatefulWidget {
  const Zakattypegu1({super.key});

  @override
  State<Zakattypegu1> createState() => _Zakattype1State();
}

class _Zakattype1State extends State<Zakattypegu1> {
  GlobalKey<FormState> key = GlobalKey<FormState>();

  List<String> zakatOptions = ["Money"];

  String? zakat;

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
                MaterialPageRoute(builder: (context) => const Currencygu11()),
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
                      'Second step..',
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
                          return 'Zakat type is empty';
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
                        labelText: 'Zakat type',
                        hintText: 'Select zakat type',
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
                              print(zakat);
                              print('validate');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Calendargue1()),
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
