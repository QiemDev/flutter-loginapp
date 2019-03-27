import 'package:flutter/material.dart';
import 'package:loginapp/home_page.dart';
import 'package:loginapp/daftar_akun.dart';
import 'package:loginapp/forgot_password.dart';

class LoginPage extends StatefulWidget {
  static String tag = 'login-page';

  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    @override
    Widget build(BuildContext context) {
      final logo = Hero(
        tag: 'hero',
        child: CircleAvatar(
          backgroundColor: Colors.greenAccent,
          radius: 48.0,
        ),
      );

      final email = TextFormField(
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        initialValue: 'Username / email',
        decoration: InputDecoration(
          hintText: 'Email',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
        ),
      );

      final kataSandi =TextFormField(
        autofocus: false,
        initialValue: 'Kata sandi',
        obscureText: true,
        decoration: InputDecoration(
          hintText: 'Kata sandi',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
        ),
      );

      final tombolMasuk = Padding(
        padding: EdgeInsets.symmetric(vertical: 16.0),
        child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24)
          ),

          onPressed: () {
            Navigator.of(context).pushNamed(HomePage.tag);
          },

          padding: EdgeInsets.all(12.0),
          color: Colors.lightBlueAccent,
          child: Text("Masuk", style: TextStyle(color: Colors.white),),
        ),
      );

      final laliSandi = FlatButton(
        child: Text("Lali sandi ? ", style: TextStyle(color: Colors.green),),
        onPressed: () {
          Navigator.of(context).pushNamed(LaliSandi.tag);
        },
      );

      final daftarBaru = FlatButton(
        child: Text("Dereng nggadahi akun ? Daftar saiki...", style: TextStyle(color: Colors.lightBlueAccent),),
        onPressed: () {
          Navigator.of(context).pushNamed(DaftarAkun.tag);
        },
      );


      return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.only(left: 24.0, right: 24.0),
            children: <Widget>[
              logo,
              SizedBox(height: 50.0),
              email,
              SizedBox(height: 50.0),
              kataSandi,
              SizedBox(height: 50.0),
              tombolMasuk,
              SizedBox(height: 45.0),
              laliSandi,
              SizedBox(height: 30.0),
              daftarBaru,
              SizedBox(height: 30.0,)
            ],
          ),
        ),
      );
    }
}

