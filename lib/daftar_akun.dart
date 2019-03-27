import 'package:flutter/material.dart';

class  DaftarAkun extends StatefulWidget {
  static String tag = 'daftar-akun';

  @override
  _DaftarAkun createState() => new _DaftarAkun();  
}

class _DaftarAkun extends State<DaftarAkun> {
  @override
  Widget build(BuildContext context) {
    final logo =Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.lightGreenAccent,
        radius: 50.0,
      ),
    );

        final formNamaLengkap = TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: 'Nama Lengkap',
          decoration: InputDecoration(
            hintText: 'Nama Lengkap',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
          ),
        );

        final formHP = TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: 'Handphone',
          decoration: InputDecoration(
            hintText: 'Handphone',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
          ),
        );

        final formEmail = TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: 'Email',
          decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
          ),
        );

        final formPassword = TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: 'Password',
          decoration: InputDecoration(
            hintText: 'Password',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
          ),
        );

        final buttonDaftar = Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0)
            ),

            onPressed: () {},

            padding: EdgeInsets.all(12.0),
            color: Colors.lightBlueAccent,
            child: Text("Daftar", style: TextStyle(color: Colors.white),),
          ),
        );

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 50.0,),
            formNamaLengkap,
            SizedBox(height: 35.0,),
            formEmail,
            SizedBox(height: 35.0,),
            formHP,
            SizedBox(height: 35.0,),
            formPassword,
            SizedBox(height: 35.0,),
            buttonDaftar,
            SizedBox(height: 40.0,)
          ],
        ),
      ),
    );
  }
}