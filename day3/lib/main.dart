import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Material(
        child: Scaffold(
          appBar: AppBar(
              title: Title(color: Colors.white, child: Text("First Page")),
              actions: [
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Icon(Icons.home),
                ),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Icon(Icons.settings),
                ),
                Padding(
                  padding: EdgeInsets.all(7.0),
                  child: Icon(Icons.search),
                ),
              ]),
          body: Center(
            child: Container(
              width: 100, // Set your desired width here
              height: 200,
              child: Image.network(
                  "https://media.tenor.com/chfzEVhXQloAAAAi/animated-man-running.gif"),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Home");
            },
            child: Icon(Icons.home_filled),
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: 0,
            backgroundColor:
            Colors.white70, // Set the background color of the navigation bar
            selectedItemColor: Colors.green,
            onTap: (index) {
              print("Button Clicked");
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "HOME",
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.bike_scooter), label: "Bike Rent"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.car_rental), label: "Car Rent")
            ],
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(
                  accountName: Text("Radhe Mohan"),
                  accountEmail: Text("radhebhai69@outlook.com"),
                  currentAccountPicture: new CircleAvatar(
                    radius: 60.0,
                    backgroundImage: NetworkImage(
                        "https://images.catchnews.com/upload/2015/10/09/salman-khan-in-tere-naam_127994.jpg"), // for Network image
                  ),
                ),
                ListTile(leading: Icon(Icons.inbox), title: Text("Inbox")),
                ListTile(
                    leading: Icon(Icons.move_to_inbox), title: Text("Primary")),
                const Divider(
                  color: Colors.black38,
                ),
                ListTile(leading: Icon(Icons.chat_bubble), title: Text("Social")),
                ListTile(leading: Icon(Icons.settings), title: Text("Settings")),
                ListTile(leading: Icon(Icons.logout), title: Text("Log Out")),
              ],
            ),
          ),
        ),
      )));
}
