import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';

@override
Widget build(BuildContext context) {
  final alucard = Hero(
    tag: 'hero',
    child: Padding(
      padding: EdgeInsets.all(16.0),
      child: CircleAvatar(
        radius: 72.0,
        backgroundColor: Colors.lightBlueAccent,
      ),
    ),
  );

  final selamatDatang = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        "Halo user! Sugeng rawuh ing meniko aplikasi...",
        style: TextStyle(fontSize: 20.0, color: Colors.blue),
      ),
  );

  final body = Container(
    width: MediaQuery.of(context).size.width,
    padding: EdgeInsets.all(28.0),
    decoration: BoxDecoration(
      gradient: LinearGradient(
        colors: [
          Colors.green,
          Colors.limeAccent,
        ] ),
    ),

    child: Column(
      children: <Widget>[alucard, selamatDatang],
    ),
  );

  return Scaffold(
    body: body,
  );
}
}