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
            backgroundColor: Colors.black,
            title: Text("DAY 14"),
            bottom: TabBar(
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
                child: cards(),
              )),
        ));
  }

  Widget cards() {
    return Container(
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: Colors.black38,
          ),
          borderRadius: BorderRadius.circular(20.0), //<-- SEE HERE
        ),
        elevation: 16,
        shadowColor: Colors.black,
        child: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          const ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://imageio.forbes.com/specials-images/imageserve/6170e01f8d7639b95a7f2eeb/Sotheby-s-NFT-Natively-Digital-1-2-sale-Bored-Ape-Yacht-Club--8817-by-Yuga-Labs/0x0.png?format=png&width=960"), // No matter how big it is, it won't overflow
            ),
            title: Text("Jojo's Bizzare Adventure"),
            subtitle: Text('an animation that has its name in history.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(children: [
                Padding(
                    padding: EdgeInsets.all(10),
                    child: Icon(Icons.play_circle_fill))
              ])
            ],
          ),
        ]),
      ),
    );
  }
}
