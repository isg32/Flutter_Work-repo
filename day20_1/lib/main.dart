import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(MaterialApp(
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
  var covidData;
  @override
  void initState() {
    super.initState();
    getCovidRecord();
  }

  Future<void> getCovidRecord() async {
    setState(() {
      _isloading = true;
    });
    final response =
    await http.get(Uri.parse("https://data.covid19india.org/data.json"));
    data = response.body;
    print(data);

    setState(() {
      _isloading = false;
      covidData = jsonDecode(data!)["cases_time_series"];
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        backgroundColor: Colors.grey.shade500,
        appBar: AppBar(
            title: Text("Covid Live data"),
            backgroundColor: Colors.blueGrey,
            elevation: 20),
        body: _isloading
            ? Center(
          child: CircularProgressIndicator(color: Colors.red),
        )
            : ListView.builder(
            itemCount: covidData == null ? 0 : covidData.length,
            padding:
            EdgeInsets.only(top: 12, bottom: 25, left: 12, right: 12),
            itemBuilder: (BuildContext, int index) {
              return Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.blueGrey,
                  elevation: 30,
                  child: Padding(
                      padding: EdgeInsets.all(30),
                      child: Column(children: [
                        Padding(
                            padding: EdgeInsets.all(2),
                            child: Column(children: [
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Row(
                                    children: [
                                      Text("Date: ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      Text(covidData[index]['date'],
                                          style: TextStyle(
                                              color: Colors.white)),
                                    ],
                                  )),
                            ])),
                        Padding(
                            padding: EdgeInsets.all(2),
                            child: Column(children: [
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Row(
                                    children: [
                                      Text("Case: ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          covidData[index]
                                          ['dailyconfirmed'],
                                          style: TextStyle(
                                              color: Colors.white)),
                                    ],
                                  )),
                            ])),
                        Padding(
                            padding: EdgeInsets.all(2),
                            child: Column(children: [
                              Padding(
                                  padding: EdgeInsets.all(2),
                                  child: Row(
                                    children: [
                                      Text("Recovered: ",
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold)),
                                      Text(
                                          covidData[index]
                                          ['dailyrecovered'],
                                          style: TextStyle(
                                              color: Colors.white)),
                                    ],
                                  )),
                            ])),
                      ])));
            }));
  }
}
