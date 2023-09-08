import 'dart:convert';
import 'home.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SoilPage(),
    );
  }
}

class SoilPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SoilPage> {
  List<dynamic> data = [];
  bool _isloading = true;

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/isg32/Flutter_Work-repo/main/API/soimoi.json'));
    var jsonData = json.decode(response.body);

    setState(() {
      data = jsonData['data'];
      _isloading = false;
    });
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
          title: Text("Soil Moisture (मिट्टी की नमी)"),
          backgroundColor: Colors.transparent,
          toolbarHeight: 65,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30))),
          elevation: 10,
        ),
        body: Center(
          child: _isloading
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
                            Icons.water_drop,
                            color: Colors.white,
                          ),
                          title: Text(
                            'Soil Moisture: ${item['SEN_VAL']}',
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
