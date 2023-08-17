import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Sapan Gajjar"),
          backgroundColor: Colors.red,
        ),
        body: Center(child: Text("This is body")),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
            child: Icon(Icons.home),
            backgroundColor: Colors.red
        ),
      ),
    ),
  ));
}