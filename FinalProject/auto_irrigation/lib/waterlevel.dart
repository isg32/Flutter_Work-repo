import 'package:flutter/material.dart';
import 'main.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: waterlevel()));
}

class waterlevel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: Text("Home"),
        backgroundColor: Colors.white10,
        toolbarHeight: 65,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
        elevation: 10,
      ),
      body: Text("Water"),
      floatingActionButton: FloatingActionButton(
          onPressed: () => {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => home()),
                )
              },
          child: Icon(Icons.home),
          backgroundColor: Colors.white10),
    );
  }
}
