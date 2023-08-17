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
        length: 3,
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
                        "data:image/jpeg;base64,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",
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
                  itemCount: 15,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: EdgeInsets.all(2.0),
                        child: Container(
                            child: Image.network(
                                "https://uploads-ssl.webflow.com/5ee12d8e99cde2e20255c16c/5ef24c446ab1f520e1466edc_flutter-meme-vince-mcmahon.jpg")));
                  }),
            )
          ]),
        ));
  }
}
