import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, // ปิด Debug Banner
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Container'),
          ),
           body: Column(
            mainAxisAlignment: MainAxisAlignment.center, // จัดกล่องให้อยู่ตรงกลาง
            children: [
              Container(
                height: 150,
                width: 300,
                margin: const EdgeInsets.all(60),
                alignment: Alignment.center, // จัดข้อความให้อยู่ตรงกลาง
                padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 42),
                decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: const Color.fromARGB(255, 0, 0, 0), width: 5)),
                child: const Text("NO Decoration",style: TextStyle(color: Colors.white),)),
              Container(
                height: 150,
                width: 300,
                alignment: Alignment.center, // จัดข้อความให้อยู่ตรงกลาง
                decoration: BoxDecoration(color: Colors.lightBlue.shade400,border: Border.all(style: BorderStyle.none),
                borderRadius: BorderRadius.circular(30)
                ),
              child: const Text("circular(30)",style: TextStyle(color: Colors.white),)),
              Container(
               height: 200,
               width: 150,
               margin: const EdgeInsets.all(50),
               alignment: Alignment.center,
               decoration: BoxDecoration(color: Colors.amber.shade400,border:Border.all(
                color: Colors.black,style: BorderStyle.none
               ),shape: BoxShape.circle ),
               child: const Text("circle",style: TextStyle(color: Colors.white),)
              ),
            ],
          ),
        ));
  }
}