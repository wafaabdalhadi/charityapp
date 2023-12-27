// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/signuparpage.dart';
import 'loginguestarr/mainpagearguest.dart';
import 'reguserar/mainhomear.dart';

void main(List<String> args) {
  runApp(const Loginpagear1());
}

class Loginpagear1 extends StatelessWidget {
  const Loginpagear1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpagear(),
    );
  }
}

class Loginpagear extends StatefulWidget {
  const Loginpagear({super.key});

  @override
  State<Loginpagear> createState() => _LoginpagearState();
}

class _LoginpagearState extends State<Loginpagear> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();

  String? email;
  String? pass;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: const Color.fromARGB(255, 213, 247, 219),
          body: Wrap(
            children: [
              Form(
                key: key,
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 250,
                      height: 100,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                        image: AssetImage('images/helptitle.png'),
                      )),
                    ),
                    const SizedBox(
                      height: 150,
                    ),
                    Container(
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                onSaved: (newValue) {
                                  email = newValue!;
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'البريد الإلكتروني فارغ';
                                  }
                                  if (!value.contains('@')) {
                                    return 'يرجى ادخال بريد الكتروني صالح';
                                  }
                                  return null;
                                },
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                controller: namecontroller,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            color: Colors.grey)),
                                    suffixIcon: const Icon(
                                      Icons.email,
                                      color: Colors.black,
                                      textDirection: TextDirection.rtl,
                                    ),
                                    label: const Text(
                                      'البريد الإلكتروني',
                                      style: TextStyle(
                                        fontSize: 20,
                                      ),
                                    ),
                                    hintText: '..ادخل بريدك الإلكتروني'),
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextFormField(
                                onSaved: (newValue) {
                                  pass = newValue!;
                                },
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'كلمة المرور فارغة';
                                  }
                                  if (!value.contains(RegExp(r'[A-Z]'))) {
                                    return 'يجب ان تحتوي كلمة المرور على حرف كبير واحر على الأقل';
                                  }

                                  if (value.length < 8) {
                                    return 'يجب ان تتكون كلمة المرور من ثمانية احرف على الأقل';
                                  }
                                  return null;
                                },
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.right,
                                controller: passcontroller,
                                keyboardType: TextInputType.visiblePassword,
                                decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(20),
                                        borderSide: const BorderSide(
                                            color: Colors.grey)),
                                    label: const Text(
                                      'كلمة المرور',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    suffixIcon: const Icon(
                                      Icons.lock,
                                      color: Colors.black,
                                      textDirection: TextDirection.rtl,
                                    ),
                                    hintText: '..يرجى ادخال كلمة المرور'),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            MaterialButton(
                              onPressed: () {
                                if (key.currentState!.validate()) {
                                  key.currentState!.save();
                                  print(email);
                                  print(pass);
                                  print('validate');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Firstpagerear()),
                                  );
                                }
                              },
                              color: const Color.fromARGB(255, 101, 163, 103),
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: const Text(
                                'تسجيل الدخول',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.w600),
                              ),
                            ),
                            const SizedBox(
                              height: 200,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MaterialButton(
                                    onPressed: () {
                                      print('Signup');
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Signuppagear()),
                                      );
                                    },
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    child: const Text(
                                      'سجل الآن',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.blue),
                                    )),
                                const Text(
                                  "ليس لديك حساب؟",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            MaterialButton(
                              onPressed: () {
                                print('Guest');
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Firstpagear11()),
                                );
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return const AlertDialog(
                                        icon: Icon(Icons.person_add),
                                        iconColor: Colors.blue,
                                        title: Text(
                                          'سجل الآن ',
                                          textAlign: TextAlign.center,
                                        ),
                                        content: Text(
                                          'للبدء في إنشاء الطلبات , يرجى التسجيل في التطبيق',
                                          textAlign: TextAlign.center,
                                        ),
                                      );
                                    });
                              },
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              child: const Text(
                                'تسجيل الدخول كضيف',
                                style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromARGB(255, 115, 115, 115)),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
