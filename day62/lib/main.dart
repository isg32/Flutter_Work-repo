import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Material(
      child: firstpage(),
    ),
  ));
}

ScrollController _controller = ScrollController();

class firstpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("RADHE ROCKS"),
        ),
        body: Scrollbar(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.network("https://pbs.twimg.com/media/FHl2kFxVkAItM1A.jpg"),
                  Image.network("https://pbs.twimg.com/media/FHl2kFxVkAItM1A.jpg"),
                  Image.network("https://pbs.twimg.com/media/FHl2kFxVkAItM1A.jpg"),
                  Image.network("https://pbs.twimg.com/media/FHl2kFxVkAItM1A.jpg"),
                  Image.network("https://pbs.twimg.com/media/FHl2kFxVkAItM1A.jpg"),
                  Image.network("https://pbs.twimg.com/media/FHl2kFxVkAItM1A.jpg"),
                  Image.network("https://pbs.twimg.com/media/FHl2kFxVkAItM1A.jpg"),
                ],
              ),
            )));
  }
}
