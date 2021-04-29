import 'package:flutter/material.dart';
import './screens/anasayfa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),

      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
      ),

      title: "Kitaplik Uygulama",
      debugShowCheckedModeBanner: false,
      home: Anasayfa(),
    );
  }
}
