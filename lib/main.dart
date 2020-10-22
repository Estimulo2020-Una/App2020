import 'package:flutter/material.dart';
import 'Login.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  build(context){
    return MaterialApp(
      home: Login(),
    );
  }
}