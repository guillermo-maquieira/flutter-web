import 'package:flutter/material.dart';
import 'package:simple_login_page/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Login Page',
      theme: ThemeData(
        primaryColor: Color(0xff4599d4),
        fontFamily: 'AvenirNext',
      ),
      home: LoginPage(),
    );
  }
}
