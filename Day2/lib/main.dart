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
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.taxi_alert), label: "Rent"),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(leading: Icon(Icons.settings),title: Text("Settings")),
              ListTile(leading: Icon(Icons.local_taxi),title: Text("History")),
              ListTile(leading: Icon(Icons.shopping_bag),title: Text("View Cart"))
            ],
          ),
        ),
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