import 'dart:convert';
// first open terminal and add flutter pub add http
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

  Future<void> getRecord() async {
    final response = await http
        .get(Uri.parse("https://api.coindesk.com/v1/bpi/currentprice.json"));
    msg1 = response.body;
    Map<String, dynamic> responseJson = json.decode(msg1);
    setState(() {
      msg2 = responseJson["bpi"]["USD"]["rate"];
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(title: Text("LIVE API")),
        body: _isloading
            ? Center(
          child: CircularProgressIndicator(),
        )
            : SingleChildScrollView(
            child: Column(children: [
              ElevatedButton(
                  onPressed: getRecord, child: Text("VIEW BITCOIN DATA")),
              Text(msg2)
            ]),
            ),
        );
    }
}