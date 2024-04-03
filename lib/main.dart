import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx/homepage.dart';
import 'package:getx/secondpage.dart';
import 'package:getx/thirdpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Demo Home Page'),
      
      getPages: [
        GetPage(name: '/', page: () => HomePage(title: 'Home Page',),),
        GetPage(name: '/secondpage', page: () => SecondPage(),),
        GetPage(name: '/thirdpage', page: () => ThirdPage(),),
      ],
    );
  }
}