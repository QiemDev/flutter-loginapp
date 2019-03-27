import 'package:flutter/material.dart';
import 'package:loginapp/home_page.dart';
import 'package:loginapp/login_page.dart';
import 'package:loginapp/forgot_password.dart';
import 'package:loginapp/daftar_akun.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
    final routes = <String, WidgetBuilder> {
        LoginPage.tag: (context) => LoginPage(),
        HomePage.tag: (context) => HomePage(),
        LaliSandi.tag: (context) => LaliSandi(),
        DaftarAkun.tag: (context) => DaftarAkun(),
    };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Aplikasi Login Cuy",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),

      home: LoginPage(),
      routes: routes,
    );
  }
}