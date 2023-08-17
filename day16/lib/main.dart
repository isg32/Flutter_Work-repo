import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Material(
        child: home(),
      )));
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
          child: Container(
            color: Colors.blueGrey,
            child: cards(),
          )),
    );
  }

  Widget cards() {
    return SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.all(0),
          ),
          Container(
              child: Card(
                color: Colors.white10,
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 16,
                child: Padding(
                    padding: EdgeInsets.only(top: 0, left: 0, bottom: 0),
                    child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0)),
                          child: Image.network(
                            "https://www.livemint.com/lm-img/img/2023/07/11/1600x900/F0vbj9-aEAAamWQ_1689062929453_1689062943099.jpg",
                            height: 180,
                            width: 325,
                          ),
                        ),
                        Positioned(
                          child: Card(
                            color: Colors.green.shade500,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "New Release",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          right: 5,
                          bottom: 5,
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 35),
                            child: Text(
                              "96%",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 20, right: 90),
                                      child: Column(children: [
                                        Text(
                                          "OMG 2",
                                          style: TextStyle(
                                              fontSize: 20, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "A • Hindi \n 2D",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ])),
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Card(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.blue),
                                                borderRadius: BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, bottom: 10, left: 2, right: 2),
                                              child: Center(
                                                  child: Text(
                                                    "BOOK NOW",
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                    ),
                                                  )),
                                            )),
                                      ))
                                ],
                              ),
                              SizedBox(height: 0),
                            ],
                          ))
                    ])),
              )),
          Container(
              child: Card(
                color: Colors.white10,
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 16,
                child: Padding(
                    padding: EdgeInsets.only(top: 0, left: 0, bottom: 0),
                    child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0)),
                          child: Image.network(
                            "https://devdiscourse.blob.core.windows.net/devnews/06_06_2023_12_09_25_4517566.jpg",
                            height: 180,
                            width: 325,
                          ),
                        ),
                        Positioned(
                          child: Card(
                            color: Colors.green.shade500,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "New Release",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          right: 5,
                          bottom: 5,
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 35),
                            child: Text(
                              "91%",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 20, right: 90),
                                      child: Column(children: [
                                        Text(
                                          "Culpa Mia",
                                          style: TextStyle(
                                              fontSize: 20, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "A • Spanish \n 2D",
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ])),
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Card(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.blue),
                                                borderRadius: BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, bottom: 10, left: 2, right: 2),
                                              child: Center(
                                                  child: Text(
                                                    "BOOK NOW",
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                    ),
                                                  )),
                                            )),
                                      ))
                                ],
                              ),
                              SizedBox(height: 0),
                            ],
                          ))
                    ])),
              )),
          Container(
              child: Card(
                color: Colors.white10,
                margin: EdgeInsets.all(20),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                elevation: 16,
                child: Padding(
                    padding: EdgeInsets.only(top: 0, left: 0, bottom: 0),
                    child:
                    Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                      Stack(children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.0),
                              topLeft: Radius.circular(15.0)),
                          child: Image.network(
                            "https://i.ytimg.com/vi/5muQK7CuFtY/maxresdefault.jpg",
                            height: 180,
                            width: 325,
                          ),
                        ),
                        Positioned(
                          child: Card(
                            color: Colors.green.shade500,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "New Release",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ),
                          right: 5,
                          bottom: 5,
                        ),
                        Positioned(
                          bottom: 10,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 10),
                            child: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 15,
                          left: 0,
                          child: Container(
                            padding: EdgeInsets.only(left: 35),
                            child: Text(
                              "88%",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ]),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(left: 20, right: 90),
                                      child: Column(children: [
                                        Text(
                                          "Babylon",
                                          style: TextStyle(
                                              fontSize: 20, fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "A • Hindi/En... \n 2D",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                            fontSize: 15,
                                          ),
                                        ),
                                      ])),
                                  Expanded(
                                      child: Padding(
                                        padding: EdgeInsets.all(5),
                                        child: Card(
                                            color: Colors.white,
                                            shape: RoundedRectangleBorder(
                                                side: BorderSide(color: Colors.blue),
                                                borderRadius: BorderRadius.circular(20)),
                                            child: Padding(
                                              padding: EdgeInsets.only(
                                                  top: 10, bottom: 10, left: 2, right: 2),
                                              child: Center(
                                                  child: Text(
                                                    "BOOK NOW",
                                                    style: TextStyle(
                                                      color: Colors.blue,
                                                    ),
                                                  )),
                                            )),
                                      ))
                                ],
                              ),
                              SizedBox(height: 0),
                            ],
                          ))
                    ])),
              )),
        ]));
  }
}
