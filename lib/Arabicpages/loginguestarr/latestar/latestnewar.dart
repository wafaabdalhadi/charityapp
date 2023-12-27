// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../mainpagearguest.dart';

void main() {
  runApp(const Latestpagear11());
}

class Latestpagear11 extends StatelessWidget {
  const Latestpagear11({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Latestpagear111(),
    );
  }
}

class Latestpagear111 extends StatefulWidget {
  const Latestpagear111({super.key});

  @override
  State<Latestpagear111> createState() => _Latestpagear111State();
}

class _Latestpagear111State extends State<Latestpagear111> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'أحدث الأخبار',
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
                MaterialPageRoute(builder: (context) => const Firstpagear11()),
              );
            });
          }),
        ),
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                    border: Border.all(),
                    image: const DecorationImage(
                        image: AssetImage('images/neews.jpg'),
                        fit: BoxFit.cover)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
