import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Material(
      child: home(),
    ),
  ));
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
              title: Text("TabBar App"),
              backgroundColor: Color(0xff86ae88),
              bottom: TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.home),
                  text: "Home",
                ),
                Tab(
                  icon: Icon(Icons.message),
                  text: "Messages",
                ),
                Tab(
                  icon: Icon(Icons.mail),
                  text: "Mail",
                ),
              ]),
            ),
            body: TabBarView(children: [
              Container(
                color: Color(0xff3d5a3b),
                child: Center(
                  child: Text("Home"),
                ),
              ),
              SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                      color: Color(0xff3d5a3b),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                              Image.network(
                                "https://i.pinimg.com/736x/d0/08/c6/d008c6239ae77e56c62653b431baaeff.jpg",
                                width: 115,
                              ),
                            ],
                          )
                        ],
                      ))),
              Container(
                color: Color(0xff3d5a3b),
                child: Center(
                  child: Text("Mails"),
                ),
              )
                   ])));
      }
}