
import 'package:flutter/material.dart';
import 'the_best_chef.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return   MaterialApp(

      debugShowCheckedModeBanner: false,

      //title: 'flutter demo' ,
      theme: ThemeData(
        //primarySwatch: Colors.deepOrange,
      ),

      home : the_best_chef (),

    );
  }
}