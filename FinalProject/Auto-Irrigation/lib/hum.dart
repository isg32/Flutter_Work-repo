import 'dart:convert';
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
      home: hum(),
    );
  }
}

class hum extends StatefulWidget {
  @override
  humstate createState() => humstate();
}

class humstate extends State<hum> {
  List<dynamic> data = [];

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    final response = await http.get(Uri.parse(
        'https://raw.githubusercontent.com/isg32/Flutter_Work-repo/main/API/dht.json'));

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
          title: Text("Weather (वातावरणम्‌)"),
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
                          trailing: Card(
                              color: Colors.white10,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(7),
                                child: Text(
                                  'Humidity: ${item['HUMIDITY']}',
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          title: Text(
                            '${item['TEMP']}°',
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
              MaterialPageRoute(builder: (context) => MyApp()),
            )
          },
          child: Icon(Icons.home),
          backgroundColor: Colors.white10,
        ),
      )
    ]);
  }
}
