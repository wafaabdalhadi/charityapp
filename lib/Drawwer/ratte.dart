// ignore_for_file: avoid_unnecessary_containers, avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/homepagee/mainpage.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

void main() {
  runApp(const Ratepage());
}

class Ratepage extends StatelessWidget {
  const Ratepage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Ratepage1(),
    );
  }
}

class Ratepage1 extends StatefulWidget {
  const Ratepage1({super.key});

  @override
  State<Ratepage1> createState() => _Ratepage1State();
}

class _Ratepage1State extends State<Ratepage1> {
  TextEditingController commentcontroller = TextEditingController();

  GlobalKey<FormState> key = GlobalKey<FormState>();
  String? comment;
  double rating = 0.0;
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
                  MaterialPageRoute(builder: (context) => const Firstpage()),
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
                          saveRatingAndReview();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Firstpage()),
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
      onRatingUpdate: (newRating) {
        setState(() {
          rating = newRating;
        });
      },
    );
  }

  Future<void> saveRatingAndReview() async {
    User? user = FirebaseAuth.instance.currentUser;

    if (user != null) {
      CollectionReference reviews =
      FirebaseFirestore.instance.collection('reviews');

      Map<String, dynamic> data = {
        'userId': user.uid,
        'email': user.email,
        'rating': rating,
        'review': comment,
      };
      try {
        await reviews.add(data);
        print(reviews);
      } catch (e) {
        print(e);
      }
    }
  }
}