import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
 debugShowCheckedModeBanner: false,
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Photo Search"),
        centerTitle: true,
      ),
      body: Material(
        color: Colors.white70,
        child: Center(
          child: ListView(
            children: <Widget>[
              Padding(padding: const EdgeInsets.all(30.0),),
              new Image.asset("assets/images/camera.png",width: 200.0,
              height: 200.0,)
            ],
          ),
        ),
      ),
    );
  }
}
