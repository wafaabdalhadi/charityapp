// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_2/homepagee/homapage.dart';
import 'package:flutter_application_2/homepagee/mainpage.dart';

void main() {
  runApp(const Order1());
}

class Order1 extends StatelessWidget {
  const Order1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Order(),
    );
  }
}

class Order extends StatefulWidget {
  const Order({Key? key}) : super(key: key);

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
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

  List<String> provinceOptions = ["Jenin", "nabluse", "Jericho"];
  List<String> orderOptions = ["order"];

  List<String> itemNames = ["Clothes", "Money", "Food"];
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
  List<String>? donations;
  Future<void> addOrder() async {
    dynamic user = FirebaseAuth.instance.currentUser;
    print(user);
    try {
      await FirebaseFirestore.instance.collection('orders').add({
        'email': email,
        'pass': pass,
        'fname': fname,
        'sname': sname,
        'phone': phone,
        'province': province,
        'address': address,
        'bulding': bulding,
        'apartment': apartment,
        'order': order,
        'time': time,
        'date': date,
        'donations': donations,
        'userId': user.uid,
      });
    } catch (error) {
      print(error);
    }
  }

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
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 50,
                        child: const Text(
                          '  Create new order..',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 50,
                        child: const Text(
                          '      Create an Order, Create Impact',
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
                                      return 'First name is empty';
                                    }
                                    return null;
                                  },
                                  controller: fnamecontroller,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'First name',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Enter your First name..'),
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
                                      return 'Last name is empty';
                                    }
                                    return null;
                                  },
                                  controller: snamecontroller,
                                  keyboardType: TextInputType.name,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Last name',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.person,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Enter your Last name..'),
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
                                      return 'Email is empty';
                                    }
                                    return null;
                                  },
                                  controller: emailcontroller,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      prefixIcon: const Icon(
                                        Icons.email,
                                        color: Colors.black,
                                      ),
                                      label: const Text(
                                        'Email',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                      hintText: 'Enter your email..'),
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
                                      return 'Phone number is empty';
                                    }
                                    return null;
                                  },
                                  controller: phonecontroller,
                                  keyboardType: TextInputType.phone,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Phone number',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.phone,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Enter your Phone number..'),
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
                                      return 'Province is empty';
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
                                    prefixIcon: const Icon(
                                      Icons.map,
                                      color: Colors.black,
                                    ),
                                    labelText: 'Province',
                                    hintText: 'Select your province',
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
                                      return 'Address is empty';
                                    }
                                    return null;
                                  },
                                  controller: addresscontroller,
                                  keyboardType: TextInputType.streetAddress,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Full address',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.location_city,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Enter your full address..'),
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
                                      return 'Bulding is empty';
                                    }
                                    return null;
                                  },
                                  controller: buldingcontroller,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Bulding',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.house,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Enter your bulding..'),
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
                                      return 'Apartment number is empty';
                                    }
                                    return null;
                                  },
                                  controller: apartmantcontroller,
                                  keyboardType: TextInputType.text,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Apartmrnt number',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.apartment,
                                        color: Colors.black,
                                      ),
                                      hintText:
                                          'Enter your apartment number..'),
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
                                      return 'Order type is empty';
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
                                    prefixIcon: const Icon(
                                      Icons.shopping_cart,
                                      color: Colors.black,
                                    ),
                                    labelText: 'Order type',
                                    hintText: 'Select order type',
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              const Text(
                                'Select donation type:',
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
                                    ),
                                    if (itemChecklist[index])
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: TextFormField(
                                          validator: (value) {
                                            if (value == null ||
                                                value.isEmpty) {
                                              return 'the details for  ${itemNames[index]} is empty';
                                            }
                                            return null;
                                          },
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
                                                'Details for ${itemNames[index]}'),
                                            hintText:
                                                'Enter details for ${itemNames[index]}..',
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
                                  'You must select a specifc time and date that suits you:',
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
                                      return 'date is empty';
                                    }
                                    return null;
                                  },
                                  controller: datecontroller,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Date',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.date_range,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Enter date..'),
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
                                      return 'time is empty';
                                    }
                                    return null;
                                  },
                                  controller: timecontroller,
                                  keyboardType: TextInputType.datetime,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Time',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.schedule,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Enter time..'),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              MaterialButton(
                                onPressed: () {
                                  if (key.currentState!.validate()) {
                                    key.currentState!.save();
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
                                    donations = selectedItems;
                                    addOrder();
                                    showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          icon: Icon(Icons.done),
                                          iconColor: Colors.blue,
                                          content: Text(
                                            'Thank you for your donation',
                                            textAlign: TextAlign.center,
                                          ),
                                        );
                                      },
                                    ).then((value) {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Firstpage()),
                                      );
                                    });
                                  }
                                },
                                color: const Color.fromARGB(255, 101, 163, 103),
                                splashColor: Colors.transparent,
                                child: const Text(
                                  'Send order',
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
