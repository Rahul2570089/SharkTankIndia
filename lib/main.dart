import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sharktank/drawer.dart';
import 'package:sharktank/profiles.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
     const SystemUiOverlayStyle(
       statusBarColor: Colors.transparent,
       statusBarBrightness: Brightness.light
     )
   );
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
      title: "Shark Tank India",
    )
  );
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: drawer(),
      body: Profiles(),
    );
  }
}