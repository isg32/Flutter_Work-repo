import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: team()));
}

class team extends StatelessWidget {
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
            title: Text("Team Bhailog"),
            backgroundColor: Colors.transparent,
            toolbarHeight: 65,
            shape: RoundedRectangleBorder(
                borderRadius:
                    BorderRadius.vertical(bottom: Radius.circular(30))),
            elevation: 10,
          ),
          body: SafeArea(
              child: ListView(children: [
            Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                color: Colors.black.withOpacity(0.5),
                elevation: 10,
                child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(children: [
                      ClipRRect(
                          child: Image.asset("assets/images/team.png"),
                          borderRadius: BorderRadius.circular(10)),
                      Card(
                        color: Colors.white10,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            "Hey User, This is Our team Of Building this system,\nSapan Gajjar: UI/UX/Backend \nAmol Rawat: UX/IoT Code/Problem Solver \nDharmik Patel: IoT[physical]/Logic",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                  "assets/images/sapan.png"),
                                            ),
                                            Card(
                                              color: Colors.white70,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text("Sapan Gajjar"),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                  "assets/images/amol.jpg"),
                                            ),
                                            Card(
                                              color: Colors.white70,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text("Amol Rawat"),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: Container(
                                      child: Padding(
                                        padding: EdgeInsets.all(2),
                                        child: Stack(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.asset(
                                                  "assets/images/dharmik.jpg"),
                                            ),
                                            Card(
                                              color: Colors.white70,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(5),
                                                child: Text("dharmik patel"),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ))
                    ])))
          ])))
    ]);
  }
}
