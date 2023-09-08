import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'home.dart';

void main() {
  runApp(MaterialApp(
    home: Material(
      child: MyApp(),
    ),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: wl(),
    );
  }
}

class wl extends StatefulWidget {
  @override
  wlstate createState() => wlstate();
}

class wlstate extends State<wl> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/isg32/Flutter_Work-repo/main/API/wl.json'));

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body);
      setState(() {
        data = jsonData['data'];
      });
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Image.asset(
        "assets/images/backgroound.jpg",
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
      ),
      Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text("Water Level (पानी की सतह)"),
          backgroundColor: Colors.transparent,
          toolbarHeight: 65,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          elevation: 10,
        ),
        body: Center(
          child: data.isEmpty
              ? CircularProgressIndicator() // Loading indicator while fetching data
              : ListView.builder(
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final item = data[index];
                    return Card(
                      color: Colors.black.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      child: ListTile(
                          contentPadding: EdgeInsets.all(20),
                          leading: Icon(
                            Icons.water,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Water Level: ${item['SEN_VAL']}',
                            style: TextStyle(color: Colors.white),
                          ),
                          subtitle: Text(
                            'Duration: ${item['TIMESTAMP']}',
                            style: TextStyle(color: Colors.white),
                          )),
                    );
                  },
                ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => {
            Navigator.pop(
              context,
              MaterialPageRoute(builder: (context) => home()),
            )
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.white10,
        ),
      )
    ]);
  }
}
