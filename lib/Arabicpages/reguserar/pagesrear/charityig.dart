// ignore_for_file: avoid_unnecessary_containers, sized_box_for_whitespace, avoid_print

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const Charityhomeguarri1());
}

class Charityhomeguarri1 extends StatelessWidget {
  const Charityhomeguarri1({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Charityhomeguarri(),
    );
  }
}

class Charityhomeguarri extends StatefulWidget {
  const Charityhomeguarri({super.key});

  @override
  State<Charityhomeguarri> createState() => _CharityhomeguarriState();
}

class _CharityhomeguarriState extends State<Charityhomeguarri> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            toolbarHeight: 80,
            title: const Text(
              'بذور الأمل',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            elevation: 30,
            centerTitle: true,
            leading: BackButton(onPressed: () {
              setState(() {
                Navigator.of(context).pop();
              });
            }),
            backgroundColor: const Color.fromARGB(255, 101, 163, 103),
          ),
          body: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    ' جمعية بذور الأمل الخيرية',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'تهدف الى مساعدة الآخرين في الجوانب الاجتماعية و غيرها , مثل تغيير حياة الاخرين و دعم الاخرين من خلال الدعم المالي لتحسين حياة الآخرين . و بطرق اخرى يمكن التبرع بالملابس الفائضة ,أو يمكن التبرعبالاغذيه غير القابله للتف.و بطرق اخرى , يدعمون الاشخاص ذوي الاحتياجات الخاصه و مشاكل الرؤيه .',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              Container(
                child: const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'رقم الهاتف: 022324040',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
