import 'package:flutter/material.dart';
import 'package:simple_login_page/dashboard.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final logo = SizedBox(
      child: Image.asset('assets/logo.png'),
      height: 100,
    );

    final welcome = Text(
      '¡Bienvenido!',
      style: TextStyle(
        fontFamily: 'AvenirNextRegular',
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.w600,
        fontStyle: FontStyle.normal,
      ),
      textAlign: TextAlign.left,
    );

    final inputEmail = Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Correo electrónico',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.mail, color: Colors.blue),
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50.0),
            )),
      ),
    );

    final inputPassword = Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: TextField(
        keyboardType: TextInputType.text,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Contraseña',
            hintStyle: TextStyle(color: Colors.grey),
            prefixIcon: Icon(Icons.lock, color: Colors.blue),
            suffixIcon: Icon(Icons.visibility, color: Colors.blue),
            contentPadding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(50.0))),
      ),
    );

    final checkboxRemember = Row(
      children: [
        Checkbox(
          onChanged: (value) {},
          value: true,
        ),
        Text('Recordar Usuario',
            style: TextStyle(
              letterSpacing: 0.13,
            )),
      ],
    );

    final buttonLogin = Padding(
      padding: EdgeInsets.only(bottom: 5),
      child: ButtonTheme(
        height: 56,
        minWidth: 328,
        child: RaisedButton(
          child: Text('Entrar',
              style: TextStyle(
                color: Colors.white,
                fontSize: 14,
                letterSpacing: 1.25,
              )),
          color: Colors.blue,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
          },
        ),
      ),
    );

    final buttonForgotPassword = FlatButton(
        child: Text(
          'Olvide mi contraseña',
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16,
            letterSpacing: 1.25,
          ),
        ),
        onPressed: null);

    final leftColumn = Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
      child: Column(
        children: [
          SizedBox(
            height: 46,
          ),
          logo,
          SizedBox(
            height: 86,
          ),
          welcome,
          SizedBox(
            height: 43,
          ),
          inputEmail,
          inputPassword,
          checkboxRemember,
          buttonLogin,
          buttonForgotPassword
        ],
      ),
    );

    final mainImage = Image.asset(
      'assets/office.jpg',
      fit: BoxFit.cover,
    );

    return Scaffold(
      backgroundColor: Color(0xfff3fafd),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Image.asset(
              'assets/group_941.png',
              height: 300,
            ),
          ),
          Container(
            color: Colors.transparent,
            child: Row(
              children: [
                Expanded(
                  child: leftColumn,
                ),
                Expanded(child: mainImage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
