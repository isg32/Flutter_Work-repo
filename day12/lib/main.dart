import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Material(child: home()),
    debugShowCheckedModeBanner: false,
  ));
}

class home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text("isg32"),
            bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.movie),
                  text: "MOVIES",
                ),
                Tab(
                  icon: Icon(Icons.music_note),
                  text: "MUSIC",
                ),
                Tab(
                  icon: Icon(Icons.video_collection),
                  text: "REEL",
                ),
                Tab(
                  icon: Icon(Icons.video_collection),
                  text: "REELS 3",
                ),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                DrawerHeader(
                    padding: EdgeInsets.all(0),
                    child: UserAccountsDrawerHeader(
                        decoration: BoxDecoration(color: Colors.purple),
                        accountName: Text("isg32"),
                        accountEmail: Text("radhemohan32@outlook.com"),
                        currentAccountPicture: CircleAvatar(
                          backgroundImage: NetworkImage(
                              "https://media.tenor.com/Xrt-ty39PfEAAAAC/elon-musk-smoke.gif"),
                        ))),
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text(' Home '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: Icon(Icons.wallet),
                  title: Text(' transactions '),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: TabBarView(children: [
            Container(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Image.network(
                        "https://m.media-amazon.com/images/M/MV5BZDc3NGQ3ZWQtYjNkOC00MjhiLTg2N2YtNmZlOGNiZTFkOWNhXkEyXkFqcGdeQXVyNjc2NjA5MTU@._V1_FMjpg_UX1000_.jpg",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text("Jojo's Bizzare Adventure"),
                      subtitle: Text("Anime"),
                      trailing: Icon(Icons.play_circle),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://assets-prd.ignimgs.com/2022/07/21/oppenheimer-poster-1658411601593.jpeg",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text("Oppenheimer"),
                      subtitle: Text("Movie"),
                      trailing: Icon(Icons.play_circle),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://www.instyle.com/thmb/vZCEkHB1nBMIes2tcKTUAMP0zf0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/BarbiePosterEmbed-de7c886812184414977730e920d77a65.jpg",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text("Barbie"),
                      subtitle: Text("Movie"),
                      trailing: Icon(Icons.play_circle),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://www.themoviedb.org/t/p/original/nAbpLidFdbbi3efFQKMPQJkaZ1r.jpg",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text("Guardians of the galaxy Vol. 3"),
                      subtitle: Text("Movie"),
                      trailing: Icon(Icons.play_circle),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://sportshub.cbsistatic.com/i/2023/05/24/7c99b26e-1dc4-448c-bfb8-9c251e79b28f/turtles-mutant-mayhem-character-posters.jpg?auto=webp&width=919&height=1152&crop=0.798:1,smart",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text("Teenage Mutant Ninja Turtles: Mutant Mayhem"),
                      subtitle: Text("Movie"),
                      trailing: Icon(Icons.play_circle),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://deadline.com/wp-content/uploads/2023/05/image002-1-copy.jpg?w=695",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text("Mission: Impossible - Dead Reckoning Part One"),
                      subtitle: Text("Movie"),
                      trailing: Icon(Icons.play_circle),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://m.media-amazon.com/images/M/MV5BM2UyNmE4MGMtZmNhZi00MDU4LWI4MjktNDc1MjVkYjczMDQxXkEyXkFqcGdeQXVyMTQ3OTc5MzU5._V1_.jpg",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text("Tere Naam"),
                      subtitle: Text("Movie"),
                      trailing: Icon(Icons.play_circle),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://pbs.twimg.com/media/FzGy2bFaIAEUKFe.jpg:large",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text("Culpa Mia"),
                      subtitle: Text("Movie"),
                      trailing: Icon(Icons.play_circle),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://m.media-amazon.com/images/I/81hvwU4ql9L._AC_UF1000,1000_QL80_.jpg",
                        fit: BoxFit.cover,
                        width: 50,
                      ),
                      title: Text("Berserk"),
                      subtitle: Text("Anime"),
                      trailing: Icon(Icons.play_circle),
                    )
                  ],
                )),
            Container(
                child: ListView(
                  children: [
                    ListTile(
                      leading: Image.network(
                        "https://hips.hearstapps.com/hmg-prod/images/beethoven-600x600.jpg",
                        fit: BoxFit.cover,
                      ),
                      title: Text("beethoven"),
                      subtitle: Text("Music"),
                      trailing: Icon(Icons.music_note),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://i.scdn.co/image/ab67616d0000b2731440ffaa43c53d65719e0150",
                        fit: BoxFit.cover,
                      ),
                      title: Text("Murder in my mind"),
                      subtitle: Text("Music"),
                      trailing: Icon(Icons.music_note),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://i.scdn.co/image/ab67616d0000b27368384dd85fd5e95831252f60",
                        fit: BoxFit.cover,
                      ),
                      title: Text("Sweet Child O' Mine"),
                      subtitle: Text("Music"),
                      trailing: Icon(Icons.music_note),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://i.scdn.co/image/ab67616d0000b27336caeed42195d1bbc2a90604",
                        fit: BoxFit.cover,
                      ),
                      title: Text("Pour Some Sugar on Me"),
                      subtitle: Text("Music"),
                      trailing: Icon(Icons.music_note),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://www.rhino.com/sites/g/files/g2000012691/files/styles/article_image/public/2019-01/081227955274.jpg?itok=WdHdEdM4",
                        fit: BoxFit.cover,
                      ),
                      title: Text("Jump - Van Halen"),
                      subtitle: Text("Music"),
                      trailing: Icon(Icons.music_note),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://upload.wikimedia.org/wikipedia/en/c/c6/LivinOnAPrayer%28hq%29.jpg",
                        fit: BoxFit.cover,
                      ),
                      title: Text("Livin' on a Prayer"),
                      subtitle: Text("Music"),
                      trailing: Icon(Icons.music_note),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://upload.wikimedia.org/wikipedia/en/4/4d/Another_one_bites_the_dust.jpg",
                        fit: BoxFit.cover,
                      ),
                      title: Text("Another One Bites the Dust"),
                      subtitle: Text("Music"),
                      trailing: Icon(Icons.music_note),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://i1.sndcdn.com/artworks-000430829199-eh8fy7-t500x500.jpg",
                        fit: BoxFit.cover,
                      ),
                      title: Text("When dove Cry"),
                      subtitle: Text("Music"),
                      trailing: Icon(Icons.music_note),
                    ),
                    ListTile(
                      leading: Image.network(
                        "https://upload.wikimedia.org/wikipedia/en/2/29/Rock_You_Like_a_Hurricane_by_Scorpions_European_artwork_German_release.png",
                        fit: BoxFit.cover,
                      ),
                      title: Text("Rock You Like A Hurricane"),
                      subtitle: Text("Music"),
                      trailing: Icon(Icons.music_note),
                    )
                  ],
                )),
            Container(
              child: GridView.builder(
                //gridview.count for individual
                  itemCount: 15,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                            decoration: BoxDecoration(
                                borderRadius:
                                BorderRadius.all(Radius.circular(8.0))),
                            child: ClipRRect(
                              borderRadius:
                              BorderRadius.circular(10), // Image border
                              child: SizedBox.fromSize(
                                size: Size.fromRadius(10), // Image radius
                                child: Image.network(
                                    "https://media.makeameme.org/created/why-should-flutter.jpg",
                                    fit: BoxFit.cover),
                              ),
                            )));
                  }),
            ),
            Container(
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3),
                    itemCount: 16,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.0)),
                          child: Container(
                              color: Colors.greenAccent,
                              child: Center(
                                child: Text("$index"),
                              )),
                        ),
                      );
                    }))
          ]),
        ));
  }
}
