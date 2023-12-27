// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';

void main() {
  runApp(const Orderar1());
}

class Orderar1 extends StatelessWidget {
  const Orderar1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Orderar(),
    );
  }
}

class Orderar extends StatefulWidget {
  const Orderar({Key? key}) : super(key: key);

  @override
  State<Orderar> createState() => _OrderarState();
}

class _OrderarState extends State<Orderar> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController fnamecontroller = TextEditingController();
  TextEditingController snamecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController buldingcontroller = TextEditingController();
  TextEditingController apartmantcontroller = TextEditingController();
  TextEditingController timecontroller = TextEditingController();
  TextEditingController datecontroller = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();

  List<String> provinceOptions = ["جنين", "نابلس", "أريحا"];
  List<String> orderOptions = ["تبرع"];

  List<String> itemNames = ["الملابس", "النقود", "الطعام"];
  List<bool> itemChecklist = List.generate(3, (index) => false);
  List<TextEditingController> itemControllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];

  String? email;
  String? pass;
  String? fname;
  String? sname;
  String? phone;
  String? province;
  String? address;
  String? bulding;
  String? apartment;
  String? order;
  String? time;
  String? date;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
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
                          '..إنشاء طلب جديد  ',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topRight,
                        width: double.infinity,
                        height: 50,
                        child: const Text(
                          'أنشئ طلب , و أحدث تأثيراً   ',
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
                                      hintText: '..أدخل إسمك الأول'),
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
                                      hintText: '..أدخل إسمك الأخير'),
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
                                        'البريد الإلكتروني',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      hintText: '..أدخل بريدك الإلكتروني'),
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
                                      hintText: '.. أدخل رقم الهاتف الخاص بك'),
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
                                      ),
                                      hintText: '..ادخل رقم الشقة'),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: DropdownButtonFormField<String>(
                                  value: order,
                                  onChanged: (newValue) {
                                    setState(() {
                                      order = newValue;
                                    });
                                  },
                                  onSaved: (newValue) {
                                    order = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'نوع الطلب فارغ';
                                    }
                                    return null;
                                  },
                                  items: orderOptions.map((order) {
                                    return DropdownMenuItem<String>(
                                      value: order,
                                      child: Text(order),
                                    );
                                  }).toList(),
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide:
                                          const BorderSide(color: Colors.grey),
                                    ),
                                    suffixIcon: const Icon(
                                      Icons.shopping_cart,
                                      color: Colors.black,
                                    ),
                                    labelText: 'نوع الطلب',
                                    hintText: 'اختر نوع الطلب',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                ':اختر نوع التبرع',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 10),
                              for (int index = 0;
                                  index < itemNames.length;
                                  index++)
                                Column(
                                  children: [
                                    CheckboxListTile(
                                      title: Text(itemNames[index]),
                                      value: itemChecklist[index],
                                      onChanged: (value) {
                                        setState(() {
                                          itemChecklist[index] = value!;
                                        });
                                      },
                                      controlAffinity:
                                          ListTileControlAffinity.trailing,
                                    ),
                                    if (itemChecklist[index])
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'تفاصيل تبرع ${itemNames[index]} فارغة ';
                                            }
                                            return null;
                                          },
                                          textAlign: TextAlign.right,
                                          textDirection: TextDirection.rtl,
                                          controller: itemControllers[index],
                                          keyboardType: TextInputType.text,
                                          decoration: InputDecoration(
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              borderSide: const BorderSide(
                                                  color: Colors.grey),
                                            ),
                                            label: Text(
                                                'تفاصيل تبرع ${itemNames[index]}'),
                                            hintText:
                                                'ادخل تفاصيل تبرع ${itemNames[index]}',
                                            alignLabelWithHint: true,
                                          ),
                                        ),
                                      ),
                                  ],
                                ),
                              const SizedBox(
                                height: 15,
                              ),
                              Container(
                                margin: const EdgeInsets.all(8),
                                child: const Text(
                                  ':يمكنك تحديد الوقت و التاريخ المناسبين لك ',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    date = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'التاريخ فارغ';
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: datecontroller,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'التاريخ',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      suffixIcon: const Icon(
                                        Icons.date_range,
                                        color: Colors.black,
                                      ),
                                      hintText: '..ادخل التاريخ'),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  onSaved: (newValue) {
                                    time = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'الوقت فارغ';
                                    }
                                    return null;
                                  },
                                  textAlign: TextAlign.right,
                                  textDirection: TextDirection.rtl,
                                  controller: timecontroller,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'الوقت',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      suffixIcon: const Icon(
                                        Icons.schedule,
                                        color: Colors.black,
                                      ),
                                      hintText: '..ادخل الوقت'),
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
                                    print(order);
                                    print(date);
                                    print(time);
                                    print('validate');
                                    List<String> selectedItems = [];
                                    List<String> itemDetails = [];

                                    for (int i = 0; i < itemNames.length; i++) {
                                      if (itemChecklist[i]) {
                                        selectedItems.add(itemNames[i]);
                                        itemDetails
                                            .add(itemControllers[i].text);
                                      }
                                    }

                                    print('Selected items: $selectedItems');
                                    print('Item details: $itemDetails');
                                  }
                                  ;
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const AlertDialog(
                                          icon: Icon(Icons.done),
                                          iconColor: Colors.blue,
                                          content: Text(
                                            'شكرا لتبرعك ',
                                            textAlign: TextAlign.center,
                                          ),
                                        );
                                      });
                                },
                                color: const Color.fromARGB(255, 101, 163, 103),
                                splashColor: Colors.transparent,
                                child: const Text(
                                  'ارسل الطلب',
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
