// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Loginpage/main.dart';

void main(List<String> args) {
  runApp(const Signuppage());
}

class Signuppage extends StatelessWidget {
  const Signuppage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Signup(),
    );
  }
}

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();
  TextEditingController fnamecontroller = TextEditingController();
  TextEditingController snamecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  TextEditingController addresscontroller = TextEditingController();
  TextEditingController buldingcontroller = TextEditingController();
  TextEditingController apartmantcontroller = TextEditingController();
  GlobalKey<FormState> key = GlobalKey<FormState>();

  List<String> provinceOptions = ["Jenin", "Nabluse","Jericho"];

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
                  MaterialPageRoute(builder: (context) => const Loginpage()),
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
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 50,
                        child: const Text(
                          '  Welcome...',
                          style: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w900),
                        ),
                      ),
                      Container(
                        alignment: Alignment.topLeft,
                        width: double.infinity,
                        height: 50,
                        child: const Text(
                          '      Get involved, sign up, and lend a hand.',
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
                                    if (!value.contains('@')) {
                                      return 'Please enter a valid email address';
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
                                    pass = newValue!;
                                  },
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Password is empty';
                                    }
                                    if (!value.contains(RegExp(r'[A-Z]'))) {
                                      return 'Password must contain at least one uppercase letter';
                                    }

                                    if (value.length < 8) {
                                      return 'Password must be at least 8 characters long';
                                    }
                                    return null;
                                  },
                                  controller: passcontroller,
                                  keyboardType: TextInputType.visiblePassword,
                                  decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          borderSide: const BorderSide(
                                              color: Colors.grey)),
                                      label: const Text(
                                        'Password',
                                        style: TextStyle(fontSize: 20),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.lock,
                                        color: Colors.black,
                                      ),
                                      hintText: 'Enter your password..'),
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
                                              const Loginpage1()),
                                    );
                                  }
                                },
                                color: const Color.fromARGB(255, 101, 163, 103),
                                splashColor: Colors.transparent,
                                child: const Text(
                                  'Sign up',
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
