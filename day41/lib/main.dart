import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Material(
        child: firstpage(),
      )));
}

class firstpage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("First Page"),
        ),
        body: Center(child: Text("First Page Code")),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            runApp(MaterialApp(home: Material(child: secondpage())));
          },
          child: Icon(Icons.skip_next),
        ));
  }
}

class secondpage extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: (Text("Second Page")),
        floatingActionButton: Center(
          child: FloatingActionButton(
            onPressed: () {
              runApp(MaterialApp(home: Material(child: thirdpage())));
            },
            child: Icon(Icons.home_filled),
          ),
        ));
  }
}

class thirdpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("ThirdPage"),
        ),
        body: Center(
          child: Text("Third Page"),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.greenAccent,
          selectedItemColor: Colors.black,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: "Rent"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Profile"),
          ],
        ));
  }
}
