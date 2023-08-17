import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Material(child: home()),
  ));
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.grey.shade800,
            title: Text("DAY 14"),
            bottom: TabBar(
              indicatorColor: Colors.white24,
              tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "HOME",
                ),
                Tab(
                  icon: Icon(Icons.photo),
                  text: "PHOTO",
                ),
                Tab(
                  icon: Icon(Icons.card_travel),
                  text: "CART",
                ),
              ],
            ),
          ),
          drawer: Drawer(
              child: UserAccountsDrawerHeader(
                accountEmail: Text("nub261@gmail.com"),
                accountName: Text("SAPU NUB"),
              )),
          body: Center(
              child: Container(
                color: Colors.blueGrey,
                child: gridCards(),
              )),
        ));
  }

  Widget gridCards() {
    return ListView(children: [
      Column(children: [
        Row(
          children: [
            Expanded(
                child: Container(
                    child: Card(
                        color: Colors.blueGrey,
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        elevation: 16,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Stack(children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                        "https://i.pinimg.com/236x/48/d6/b3/48d6b3d3dd57f60489346a65c11bf492.jpg",
                                        height: 120,
                                        width: double.infinity,
                                        fit: BoxFit.fill),
                                  ),
                                  Positioned(
                                      bottom: 0,
                                      right: 10,
                                      child: Container(
                                          child: Icon(Icons.play_circle_fill)))
                                ]),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("JOJO Bizzare Adventure ", maxLines: 2),
                                SizedBox(height: 5),
                                Text(
                                    "Radhe mohan jindabad, nirjala bewafa thi, mark my words",
                                    overflow: TextOverflow.ellipsis)
                              ]),
                        )))),
            Expanded(
                child: Container(
                    child: Card(
                        color: Colors.blueGrey,
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 16,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                      "https://i.pinimg.com/236x/48/d6/b3/48d6b3d3dd57f60489346a65c11bf492.jpg",
                                      height: 120,
                                      width: double.infinity,
                                      fit: BoxFit.fill),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("JOJO Bizzare Adventure ", maxLines: 2),
                                SizedBox(height: 5),
                                Text(
                                    "Radhe mohan jindabad, nirjala bewafa thi, mark my words",
                                    overflow: TextOverflow.ellipsis)
                              ]),
                        )))),
          ],
        ),
        Row(
          children: [
            Expanded(
                child: Container(
                    child: Card(
                        color: Colors.blueGrey,
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 16,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                      "https://static.wikia.nocookie.net/86f132bb-a6a2-404d-9ac4-8f1932317340/scale-to-width/755",
                                      height: 120,
                                      width: double.infinity,
                                      fit: BoxFit.fill),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                          child: Text(
                                            "JOJO Bizzare Adventure ",
                                            maxLines: 2,
                                          )),
                                      Icon(Icons.favorite)
                                    ]),
                                SizedBox(height: 5),
                                Text(
                                    "Radhe mohan jindabad, nirjala bewafa thi, mark my words",
                                    overflow: TextOverflow.ellipsis)
                              ]),
                        )))),
            Expanded(
                child: Container(
                    child: Card(
                        color: Colors.blueGrey,
                        margin: EdgeInsets.all(8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 16,
                        child: Padding(
                          padding: EdgeInsets.all(20),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                      "https://i.pinimg.com/236x/48/d6/b3/48d6b3d3dd57f60489346a65c11bf492.jpg",
                                      height: 120,
                                      width: double.infinity,
                                      fit: BoxFit.fill),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text("JOJO Bizzare Adventure ", maxLines: 2),
                                SizedBox(height: 5),
                                Text(
                                    "Radhe mohan jindabad, nirjala bewafa thi, mark my words",
                                    overflow: TextOverflow.ellipsis)
                              ]),
                        )))),
          ],
        ),
      ])
    ]);
  }
}
