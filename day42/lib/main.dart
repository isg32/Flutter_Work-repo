import 'dart:html';

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
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff7fc983),
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black45,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
            BottomNavigationBarItem(
                icon: Icon(Icons.car_rental), label: "Rent"),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: "Profile"),
          ],
        ),
        drawer: Drawer(
          child: ListView(children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff7fc983),
              ),
              accountName: Text("radhe"),
              currentAccountPicture: new CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(
                    "https://pbs.twimg.com/media/E8xC_u6UUAUisAQ.jpg"),
              ),
              accountEmail: Text("rad@moh.com"),
            )
          ]),
        ));
  }
}

//New

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
    );
  }
}
