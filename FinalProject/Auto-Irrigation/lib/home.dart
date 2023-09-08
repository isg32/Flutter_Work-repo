import 'package:flutter/material.dart';
import 'soil.dart';
import 'waterlevel.dart';
import 'hum.dart';
import 'about_team.dart';

void main() {
  runApp(MaterialApp(
    home: Material(
      child: home(),
    ),
  ));
}

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return homepage();
  }
}

class homepage extends State<home> {
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
          extendBodyBehindAppBar: true,
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text("Home"),
            backgroundColor: Colors.transparent,
            toolbarHeight: 65,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            elevation: 10,
          ),
          drawer: SafeArea(
              child: Padding(
            padding: const EdgeInsets.only(bottom: 10, top: 8, left: 5),
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
                  elevation: 10,
                  backgroundColor: Colors.white.withOpacity(0.2),
                  child: ListView(children: [
                    UserAccountsDrawerHeader(
                        accountName: Text("Radhe Mohan"),
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                        ),
                        accountEmail: Text("radhebhai69@outlook.com"),
                        currentAccountPicture: new CircleAvatar(
                            radius: 60.0,
                            backgroundImage:
                                AssetImage("assets/images/radhe.jpeg"))),
                    ListTile(
                        leading: Icon(
                          Icons.home,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Home",
                          style: TextStyle(color: Colors.white),
                        )),
                    const Divider(
                      color: Colors.black38,
                    ),
                    ListTile(
                        onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        SoilPage()), //change to soil
                              )
                            },
                        leading: Icon(
                          Icons.water_drop,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Soil Moisture (मिट्टी की नमी)",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => wl()),
                              )
                            },
                        leading: Icon(
                          Icons.water,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Water Level\n(पानी की सतह)",
                          style: TextStyle(color: Colors.white),
                        )),
                    ListTile(
                        onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => hum()),
                              )
                            },
                        leading: Icon(
                          Icons.cloud_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Weather (वातावरणम्‌)",
                          style: TextStyle(color: Colors.white),
                        )),
                    const Divider(
                      color: Colors.black38,
                    ),
                    ListTile(
                        onTap: () => {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => team()),
                              )
                            },
                        leading: Icon(
                          Icons.group_add_outlined,
                          color: Colors.white,
                        ),
                        title: Text(
                          "Team (दल)",
                          style: TextStyle(color: Colors.white),
                        )),
                  ]),
                ),
              ),
            ),
          )),
          body: SafeArea(
              child: ListView(
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        child: Card(
                            color: Colors.black.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                                padding: EdgeInsets.all(10),
                                child: ListTile(
                                  iconColor: Colors.white,
                                  textColor: Colors.white,
                                  leading: Icon(Icons.cloud_outlined),
                                  title: Text("Humidity"),
                                  subtitle: Text("45%"),
                                ))),
                      )),
                      Expanded(
                          child: Container(
                        child: Card(
                          color: Colors.blue.withOpacity(0.5),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                              padding: EdgeInsets.all(10),
                              child: ListTile(
                                iconColor: Colors.white,
                                textColor: Colors.white,
                                leading: Icon(Icons.water),
                                title: Text("Water"),
                                subtitle: Text("138"),
                              )),
                        ),
                      )),
                    ],
                  )
                ],
              ),
              Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.green.withOpacity(0.2),
                  elevation: 10,
                  child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: [
                          ClipRRect(
                              child: Image.asset("assets/images/bihari.jpeg"),
                              borderRadius: BorderRadius.circular(30)),
                          Column(children: [
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Text(
                                "Hello, Farmer This is Your Auto-Irrigation system in assistance. You can Check Your Soil Moisture (मिट्टी की नमी) or Water Level (पानी की सतह) From Below.",
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ]),
                        ],
                      ))),
              Card(
                color: Colors.white10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              SoilPage()), //rememver to change to soil
                    )
                  },
                  contentPadding: EdgeInsets.all(10),
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.water_drop_outlined),
                  title: Text("Soil Moisture"),
                  subtitle: Text("Tap here to View Soil Moisture level"),
                ),
              ),
              Card(
                color: Colors.black.withOpacity(0.5),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => wl()),
                    )
                  },
                  contentPadding: EdgeInsets.all(10),
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.water),
                  title: Text("Water Level"),
                  subtitle: Text("Tap here to View Water level"),
                ),
              ),
              Card(
                color: Colors.blueAccent.withOpacity(0.2),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
                child: ListTile(
                  onTap: () => {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => hum()),
                    )
                  },
                  contentPadding: EdgeInsets.all(10),
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  leading: Icon(Icons.cloud_outlined),
                  title: Text("Weather"),
                  subtitle: Text("Tap here to View Fetched Weather"),
                ),
              )
            ],
          )))
    ]);
  }
}
