import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Material(
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Padding(
              padding: EdgeInsets.all(7.0),
              child: Icon(Icons.camera_alt),
            )
          ],
          title: Text("Sapan Gajjar"),
          backgroundColor: Colors.green,
        ),
        body: Center(child: Text("This is body")),
        floatingActionButton: FloatingActionButton(
            onPressed: (){
              print("Hello! How can i help You?");
            },
            child: Icon(Icons.chat),
            backgroundColor: Colors.green
        ),
      ),
    ),
  ));
}