//Scrollwidget

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
        appBar: AppBar(
          title: Text("ScrollNigs"),
        ),
        body: Container(
          child: Padding(
              padding: EdgeInsets.all(5.0),
              child: Scrollbar(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => pagetwo()));
                          },
                          child: Card(
                              child: Container(
                                  padding: EdgeInsets.all(5.0),
                                  child: Image.network(
                                      "https://thumbs.gfycat.com/CleverHatefulDowitcher-max-1mb.gif"))),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => pagethree()));
                          },
                          child: Card(
                              child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: Image.network(
                                      "https://thumbs.gfycat.com/CleverHatefulDowitcher-max-1mb.gif"))),
                        ),
                      ],
                    ),
                  ))),
        ));
  }
}

class pagetwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page-Two"),
        ),
        body: Column(children: [
          Card(
              child: Container(
                  padding: EdgeInsets.all(7.0),
                  child: Image.network(
                      "https://indianmemetemplates.com/wp-content/uploads/radhe-bhaiya-gaye-kaam-se-bhaiya-fas-gaye-bamun-ki-ladki-ke-chakkar-mein-1024x516.jpg"))),
          Text("Bada Khush Hu aaj to!",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => pagethree()));
              },
              child: Icon(Icons.home))
        ]));
  }
}

class pagethree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page-Three"),
        ),
        body: Column(children: [
          Card(
              child: Container(
                  padding: EdgeInsets.all(7.0),
                  child: Image.network(
                      "https://im.indiatimes.in/content/2020/Aug/t5_5f32662a5a643.jpeg?w=725&h=543"))),
          Text("flutter flutter hota hai",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context,
                    MaterialPageRoute(builder: (context) => pagethree()));
              },
              child: Icon(Icons.home))
        ]));
  }
}
