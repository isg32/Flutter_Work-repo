import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
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
        appBar: AppBar(title: Text("Stateful App"), actions: [
          Padding(
              padding: EdgeInsets.all(7.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => settingpage(),
                      ));
                },
                child:
                Image.network("https://i.imgflip.com/41j06n.png?a469488"),
              )),
          Padding(
              padding: EdgeInsets.all(7.0),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => searchpage(),
                      ));
                },
                child: Icon(Icons.search),
              ))
        ]),
        body: Center(
          child: Text("Home"),
        ));
  }
}

class settingpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return settinpagestate();
  }
}

class settinpagestate extends State<settingpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Center(
          child: Column(children: [
            Center(
              child: Container(
                width: 200,
                height: 400,
                child: Image.network(
                    "https://gifdb.com/images/high/zenitsu-pixel-running-ualrxil6k8hx4ec9.gif"),
              ),
            ),
            Center(
                child: Text(
                  "Nothing to See Here!",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ))
          ])),
    );
  }
}

class searchpage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return searchpagestate();
  }
}

class searchpagestate extends State<searchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Search"),
      ),
      body: Center(
          child: Column(children: [
            Center(
              child: Container(
                width: 200,
                height: 400,
                child: Image.network(
                    "https://gifdb.com/images/high/zenitsu-pixel-running-ualrxil6k8hx4ec9.gif"),
              ),
            ),
            Center(
                child: Text(
                  "Nothing to search Here!",
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ))
          ])),
    );
  }
}
