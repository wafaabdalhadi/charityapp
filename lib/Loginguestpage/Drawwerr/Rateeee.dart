// ignore_for_file: avoid_unnecessary_containers, avoid_print, file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Loginguestpage/Mainpagegeast.dart';

import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const Ratepage1());
}

class Ratepage1 extends StatelessWidget {
  const Ratepage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ratepage11(),
    );
  }
}

class Ratepage11 extends StatefulWidget {
  const Ratepage11({super.key});

  @override
  State<Ratepage11> createState() => _Ratepage11State();
}

class _Ratepage11State extends State<Ratepage11> {
  TextEditingController commentcontroller = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  String? comment;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Review and Rating',
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
                  MaterialPageRoute(builder: (context) => const Firstpage11()),
                );
              });
            }),
          ),
          body: Form(
            key: key,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.all(20),
                  child: const Text(
                    'If you enjoy using this app, would you mind taking a moment to rate it?',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                ),
                Center(
                  child: starrate(),
                ),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: Center(
                      child: TextFormField(
                        onSaved: (newValue) {
                          comment = newValue!;
                        },
                        validator: (value) {
                          return null;
                        },
                        controller: commentcontroller,
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          labelStyle: TextStyle(
                            fontSize: 20,
                          ),
                          hintText: 'You can also write a review here',
                        ),
                      ),
                    ),
                  ),
                ),
                Center(
                  child: MaterialButton(
                      onPressed: () {
                        if (key.currentState!.validate()) {
                          key.currentState!.save();
                          print(comment);

                          print('validate');
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Firstpage11()),
                          );
                        }
                        showDialog(
                            context: context,
                            builder: (context) {
                              return const AlertDialog(
                                icon: Icon(Icons.check_circle),
                                iconColor: Colors.green,
                                title: Text(
                                  'Done !',
                                  textAlign: TextAlign.center,
                                ),
                                content: Text(
                                  'Thank you for your rating! Your feedback helps us improve',
                                  textAlign: TextAlign.center,
                                ),
                              );
                            });
                      },
                      color: const Color.fromARGB(255, 101, 163, 103),
                      splashColor: Colors.transparent,
                      highlightColor: Colors.transparent,
                      child: const Text(
                        'Submit',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600),
                      )),
                )
              ],
            ),
          )),
    );
  }

  starrate() {
    return RatingBar.builder(
      direction: Axis.horizontal,
      allowHalfRating: true,
      initialRating: 0,
      minRating: 0.5,
      itemCount: 5,
      itemPadding: const EdgeInsets.symmetric(horizontal: 2.0),
      itemBuilder: (context, _) => const Icon(
        Icons.star,
        color: Colors.amber,
      ),
      onRatingUpdate: (rating) {
        print(rating);
      },
    );
  }
}
