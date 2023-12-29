import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/AdminCharity/admin.dart';
import 'package:flutter_application_2/AdminCharity/charity.dart';
import 'package:flutter_application_2/Loginpage/signuppage.dart';
import 'package:flutter_application_2/homepagee/mainpage.dart';
import '../Loginguestpage/Mainpagegeast.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Loginpage());
}

class Loginpage1 extends StatelessWidget {
  const Loginpage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Loginpage(),
    );
  }
}


class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController passcontroller = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();

  String email = '';
  String? pass;
  final FirebaseAuth _auth = FirebaseAuth.instance;



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 213, 247, 219),
        body: Builder(
          builder: (BuildContext context) {
            return ListView(
                children: [
                  Form(
                    key: key,
                    child: Column(
                      children: [
                        const SizedBox(height: 30),
                        Container(
                          width: 250,
                          height: 100,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('images/helptitle.png'),
                            ),
                          ),
                        ),
                        const SizedBox(height: 150),
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
                                      return 'Email is empty';
                                    }
                                    if (!value.contains('@')) {
                                      return 'Please enter a valid email address';
                                    }
                                    return null;
                                  },
                                  controller: namecontroller,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
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
                                    hintText: 'Enter your email..',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 5),
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
                                      borderRadius: BorderRadius.circular(20),
                                      borderSide: const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    label: const Text(
                                      'Password',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    prefixIcon: const Icon(
                                      Icons.lock,
                                      color: Colors.black,
                                    ),
                                    hintText: 'Enter your password..',
                                  ),
                                ),
                              ),
                              const SizedBox(height: 20),
                              MaterialButton(
                                onPressed: () async {
                                  if (key.currentState!.validate()) {
                                    key.currentState!.save();
                                    try {
                                      final UserCredential userCredential =
                                      await _auth.signInWithEmailAndPassword(
                                        email: email!,
                                        password: pass!,
                                      );

                                      if (userCredential.user != null) {
                                        print('User signed in successfully!');
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) => Pagees(),
                                          ),
                                        );

                                        if (email == "charity@charity.com" ||
                                            pass == "Charity1122") {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const charity1()),
                                          );
                                        } else if (email == "Admin@admin.com" ||
                                            pass == "Admin1122") {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const admin1()),
                                          );
                                        } else {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) => const Firstpage()),
                                          );
                                        }
                                      }
                                    }  catch (e) {
                                      print('Error occurred: $e');
                                      // Here's where you want to show a SnackBar if login fails
                                      ScaffoldMessenger.of(context).showSnackBar(
                                        SnackBar(
                                          content: Text('Failed to sign in. Please try again.'),
                                        ),
                                      );
                                    }
                                  }
                                },
                                color: const Color.fromARGB(255, 101, 163, 103),
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                child: const Text(
                                  'Login',
                                  style: TextStyle(
                                      fontSize: 15, fontWeight: FontWeight.w600),
                                ),
                              ),
                              const SizedBox(height: 200),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "You don't have account ?",
                                    style: TextStyle(
                                        fontSize: 17, fontWeight: FontWeight.w500),
                                  ),
                                  MaterialButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) => const Signuppage()),
                                        );
                                      },

                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      child: const Text(
                                        'Sign up',
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.blue),
                                      ))
                                ],
                              ),
                              MaterialButton(
                                onPressed: () {
                                  print('Guest');
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                        const Firstpage11()),
                                  );
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return const AlertDialog(
                                          icon: Icon(Icons.person_add),
                                          iconColor: Colors.blue,
                                          title: Text(
                                            'Sign up ',
                                            textAlign: TextAlign.center,
                                          ),
                                          content: Text(
                                            'To start creating orders, please sign up in the Application.',
                                            textAlign: TextAlign.center,
                                          ),
                                        );
                                      });
                                },
                                splashColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                child: const Text(
                                  'Login as guest',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w500,
                                      color: Color.fromARGB(255, 115, 115, 115)),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
            );
          },
        ),
      ),
    );
  }
}