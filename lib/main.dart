import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
 debugShowCheckedModeBanner: false,
  home: MyApp(),
));

class MyApp extends StatelessWidget {
  var _categoryNameController = new TextEditingController();
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
              height: 200.0,),
              new ListTile(
                title: new TextFormField(
                  controller: _categoryNameController,
                  decoration: new InputDecoration(
                    labelText: 'Enter a Catgory',
                    hintText: 'eg:dogs,bikes,cats..',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0)
                    ),
                    contentPadding: const EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0)
                  ),
                ),
                subtitle: new Material(
                  color: Colors.lightBlue,
                  elevation: 5.0,
                  borderRadius: BorderRadius.circular(25.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
