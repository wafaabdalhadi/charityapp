// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

import 'loginarpage.dart';

void main(List<String> args) {
  runApp(const Signuppagear());
}

class Signuppagear extends StatelessWidget {
  const Signuppagear({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signupar(),
    );
  }
}

class Signupar extends StatefulWidget {
  const Signupar({super.key});

  @override
  State<Signupar> createState() => _SignuparState();
}

class _SignuparState extends State<Signupar> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController fnamecontroller = TextEditingController();
  TextEditingController snamecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController buldingcontroller = TextEditingController();
  TextEditingController apartmantcontroller = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();

  List<String> provinceOptions = ["جنين", "نابلس", "أريحا"];

  String? email;
  String? pass;
  String? fname;
  String? sname;
  String? phone;
  String? province;
  String? address;
  String? bulding;
  String? apartment;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 101, 163, 103),
            toolbarHeight: 80,
            elevation: 30,
            leading: BackButton(onPressed: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Loginpagear()),
                );
              });
            }),
          ),
          backgroundColor: const Color.fromARGB(255, 213, 247, 219),
          body: Container(
            child: Form(
                key: key,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 60,
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: double.infinity,
                        height: 50,
                        child: const Text(
                          '...مرحبا  ',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: double.infinity,
                        height: 50,
                        child: const Text(
                          'شارك , قم بالتسجيل , و مد يد المساعدة     ',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w600),
                        ),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    fname = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'الإسم الأول فارغ';
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: fnamecontroller,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'الإسم الأول',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      suffixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.black,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      hintText: '..ادخل إسمك الأول'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    sname = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'الإسم الأخير فارغ';
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: snamecontroller,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'الإسم الأخير',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      suffixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.black,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      hintText: '..ادخل إسمك الأخير'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
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
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: emailcontroller,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      suffixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.black,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      label: const Text(
                                        'البريد الإالكتروني',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      hintText: '..ادخل بريدك الإلكتروني'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
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
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: passcontroller,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                      hintText: '..ادخل كلمة المرور'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    phone = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'رقم الهاتف فارغ';
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: phonecontroller,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'رقم الهاتف',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      suffixIcon: const Icon(
                                        Icons.phone,
                                        color: Colors.black,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      hintText: '..ادخل رقم الهاتف الخاص بك'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonFormField<String>(
                                  value: province,
                                  onChanged: (newValue) {
                                    setState(() {
                                      province = newValue;
                                    });
                                  },
                                  onSaved: (newValue) {
                                    province = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'المقاطعة فارغة';
                                    }
                                    return null;
                                  },
                                  items: provinceOptions.map((province) {
                                    return DropdownMenuItem<String>(
                                      value: province,
                                      child: Text(province),
                                    );
                                  }).toList(),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                          const BorderSide(color: Colors.grey),
                                    ),
                                    suffixIcon: const Icon(
                                      Icons.map,
                                      color: Colors.black,
                                      textDirection: TextDirection.rtl,
                                    ),
                                    labelText: 'المقاطعة',
                                    hintText: 'اختر المقاطعة',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    address = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'العنوان فارغ';
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: addresscontroller,
                                  keyboardType: TextInputType.streetAddress,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'العنوان الكامل',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      suffixIcon: const Icon(
                                        Icons.location_city,
                                        color: Colors.black,
                                      ),
                                      hintText: '..ادخل عنوانك بالكامل'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    bulding = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'المبنى فارغ';
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: buldingcontroller,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'المبنى',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      suffixIcon: const Icon(
                                        Icons.house,
                                        color: Colors.black,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      hintText: '..ادخل المبنى الخاص بك'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    apartment = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'رقم الشقة فارغ';
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: apartmantcontroller,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'رقم الشقة',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      suffixIcon: const Icon(
                                        Icons.apartment,
                                        color: Colors.black,
                                        textDirection: TextDirection.rtl,
                                      ),
                                      hintText: '..ارخل رقم الشقة'),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  if (key.currentState!.validate()) {
                                    key.currentState!.save();
                                    print(fname);
                                    print(sname);
                                    print(email);
                                    print(pass);
                                    print(phone);
                                    print(province);
                                    print(address);
                                    print(bulding);
                                    print(apartment);
                                    print('validate');
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Loginpagear1()),
                                    );
                                  }
                                },
                                color: const Color.fromARGB(255, 101, 163, 103),
                                splashColor: Colors.transparent,
                                child: const Text(
                                  'سجل الآن',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                              )
                            ],
                          )),
                    ],
                  ),
                )),
          ),
        ));
  }
}
