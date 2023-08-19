import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Material(
      child: bitcoin(),
    ),
  ));
}

class bitcoin extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return bitcoinstate();
  }
}

class bitcoinstate extends State<bitcoin> {
  String msg1 = "";
  String msg2 = "";
  bool _isloading = false;
  String? data;
  var newsData;
  @override
  void initState() {
    super.initState();
    getCovidRecord();
  }

  Future<void> getCovidRecord() async {
    setState(() {
      _isloading = true;
    });
    final response = await http
        .get(Uri.parse("https://inshorts.me/news/all?offset=0&limit=15"));
    data = response.body;
    print(data);

    setState(() {
      _isloading = false;
      newsData = jsonDecode(data!)["data"]["articles"];
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey.shade500,
        appBar: AppBar(
            title: Text("News"),
            backgroundColor: Colors.blueGrey,
            elevation: 20),
        body: _isloading
            ? Center(
          child: CircularProgressIndicator(color: Colors.red),
        )
            : ListView.builder(
            itemCount: newsData == null ? 0 : newsData.length,
            padding:
            EdgeInsets.only(top: 12, bottom: 25, left: 12, right: 12),
            itemBuilder: (BuildContext, int index) {
              return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.blueGrey,
                  elevation: 30,
                  child: Padding(
                      padding: EdgeInsets.all(3),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.all(2),
                            child: Column(children: [
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Row(children: [
                                    Expanded(
                                        child: Column(children: [
                                          Padding(
                                              padding: EdgeInsets.all(2),
                                              child: Stack(
                                                children: [
                                                  ClipRRect(
                                                      borderRadius:
                                                      BorderRadius.circular(
                                                          20),
                                                      child: Image.network(
                                                          newsData[index]
                                                          ["imageUrl"])),
                                                  Positioned(
                                                      bottom: 10,
                                                      right: 5,
                                                      child: Card(
                                                        shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                5)),
                                                        child: Padding(
                                                          padding:
                                                          EdgeInsets.all(5),
                                                          child: Text(newsData[
                                                          index][
                                                          "categoryNames"]
                                                          [0]),
                                                        ),
                                                      ))
                                                ],
                                              )),
                                          Text(
                                            newsData[index]["title"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 20),
                                            maxLines: 1,
                                          ),
                                          SizedBox(height: 5),
                                          Text(
                                            newsData[index]["content"],
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 10),
                                          ),
                                          SizedBox(height: 15),
                                        ])),
                                  ])),
                            ]))
                      ])));
            }));
  }
}
