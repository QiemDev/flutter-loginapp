import 'package:flutter/material.dart';

class LaliSandi extends StatefulWidget{
  static String tag = 'lali-sandi';

  @override
    _LaliSandi createState() => new _LaliSandi();
  }

  class _LaliSandi extends State<LaliSandi> {
      @override
      Widget build(BuildContext context) {
        final logo =Hero(
          tag: 'hero',
          child: CircleAvatar(
            backgroundColor: Colors.green,
            radius: 50.0,
          ),
        );

        final formEmaillupa = TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          initialValue: 'Email',
          decoration: InputDecoration(
            hintText: 'Email',
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0))
          ),
        );

        final tombolLaliSandi = Padding(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24.0)
            ),

            onPressed: () {},

            padding: EdgeInsets.all(12.0),
            color: Colors.lightBlueAccent,
            child: Text("Minta Sandi Baru", style: TextStyle(color: Colors.white),),
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
                SizedBox(height: 50.0),
                formEmaillupa,
                SizedBox(height: 45.0),
                tombolLaliSandi,
                SizedBox(height: 50.0)
              ],
            ),
          ),
        );
      }

  }