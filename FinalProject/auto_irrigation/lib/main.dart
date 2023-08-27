import 'package:flutter/material.dart';
import 'soil.dart';
import 'waterlevel.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: home()));
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text("Home"),
          backgroundColor: Colors.white10,
          toolbarHeight: 65,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
          elevation: 10,
        ),
        endDrawer: SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(bottom: 10, top: 8, right: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                // wrap with a sizedbox for a custom width [for more flexibility]
                child: SizedBox(
                  width: 200,
                  child: Drawer(
                    backgroundColor: Colors.blueGrey,
                    child: ListView(children: [
                      UserAccountsDrawerHeader(
                          accountName: Text("Radhe Mohan"),
                          decoration: BoxDecoration(color: Colors.white10),
                          accountEmail: Text("radhebhai69@outlook.com"),
                          currentAccountPicture: new CircleAvatar(
                              radius: 60.0,
                              backgroundImage:
                              AssetImage("assets/images/radhe.jpeg"))),
                      ListTile(leading: Icon(Icons.home), title: Text("Home")),
                      const Divider(
                        color: Colors.black38,
                      ),
                      ListTile(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => soil()),
                            )
                          },
                          leading: Icon(Icons.cloud_outlined),
                          title: Text("Soil Moisture (मिट्टी की नमी)")),
                      ListTile(
                          onTap: () => {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => waterlevel()),
                            )
                          },
                          leading: Icon(Icons.water),
                          title: Text("Water Level (पानी की सतह)")),
                    ]),
                  ),
                ),
              ),
            )),
        body: SafeArea(
            child: Column(
              children: [
                Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                    color: Colors.blueGrey,
                    elevation: 10,
                    child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(
                          children: [
                            ClipRRect(
                                child: Image.asset("assets/images/bihari.jpeg"),
                                borderRadius: BorderRadius.circular(30)),
                            Card(
                              color: Colors.white12,
                              elevation: 5,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  "Hello, Farmer This is Your Auto-Irrigation system in assistance. You can Check Your Soil Moisture (मिट्टी की नमी) or Water Level (पानी की सतह) From Below.",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ))),
                Card(
                  color: Colors.white24,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: ListTile(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => soil()),
                      )
                    },
                    contentPadding: EdgeInsets.all(10),
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.cloud),
                    title: Text("SoilMoisture"),
                    subtitle: Text("Tap here to View Soil Moisture level"),
                  ),
                ),
                Card(
                  color: Colors.white24,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  child: ListTile(
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => waterlevel()),
                      )
                    },
                    contentPadding: EdgeInsets.all(10),
                    iconColor: Colors.white,
                    textColor: Colors.white,
                    leading: Icon(Icons.water_drop),
                    title: Text("Water Level"),
                    subtitle: Text("Tap here to View Water level"),
                  ),
                )
              ],
            )));
  }
}
