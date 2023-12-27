// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_application_2/Arabicpages/loginguestarr/chariryar/charhomegu.dart';
import '../mainpagearguest.dart';

void main() {
  runApp(const Charitypagear11());
}

class Charitypagear11 extends StatelessWidget {
  const Charitypagear11({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Charitypagear111(),
    );
  }
}

class Charitypagear111 extends StatefulWidget {
  const Charitypagear111({super.key});

  @override
  State<Charitypagear111> createState() => _Charitypagear111State();
}

class _Charitypagear111State extends State<Charitypagear111> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'الجمعيات الخيرية',
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
                  MaterialPageRoute(
                      builder: (context) => const Firstpagear11()),
                );
              });
            }),
          ),
          body: GridView(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Charityhomeguar()),
                    );
                  });
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                      border: Border.all(),
                      image: const DecorationImage(
                          image: AssetImage('images/hope.jpg'),
                          fit: BoxFit.cover)),
                ),
              ),
            ],
          ),
        ));
  }
}
