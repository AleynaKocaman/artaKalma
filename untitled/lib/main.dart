import 'package:flutter/material.dart';
import 'package:untitled/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false, //denenme olduğunu belirten yazıyı kaldırıyor
      home: LoginPage(),//ana sayfada loginpage sınıfındaki kodları göster
    );
  }
}