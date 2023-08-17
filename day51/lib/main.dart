import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Material(
      child: firstpage(),
    ),
  ));
}

class firstpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return firstpagestate();
  }
}

class firstpagestate extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful App")),
      body: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => secondpage()));
            },
            child: Text("SecondPage"),
          )),
    );
  }
}

class secondpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return secondpagestate();
  }
}

class secondpagestate extends State<secondpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Center(
            child: Column(children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => firstpage(),
                      ));
                },
                child: Icon(Icons.home),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => thirdpage(),
                      ));
                },
                child: Text("Thirdpage"),
              ),
            ])));
  }
}

class thirdpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return thirdpagestate();
  }
}

class thirdpagestate extends State<thirdpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Thirdpage"),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => firstpage()));
              },
              child: Icon(Icons.home))),
    );
  }
}
