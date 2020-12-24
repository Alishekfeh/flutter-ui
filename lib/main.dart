import 'package:flutter/material.dart';
import 'package:flutter_ui_new_profil/profile1/profile1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ui Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,


        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Profile1(),
    );
  }
}



