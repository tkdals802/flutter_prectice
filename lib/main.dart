import 'package:flutter/material.dart';
import 'package:flutter_prectice3/screens/Insta.dart';
import 'package:flutter_prectice3/screens/input.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "insta",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: MaterialApp(
        title:'Insta',
        initialRoute: '/',
        routes: {
          '/': (context) => const Insta(),
          '/input' : (context) => const JsonParse(),
        },
      ),
    );
  }
}



