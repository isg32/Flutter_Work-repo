import 'dart:async';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Material(
      child: splashscreen(),
    ),
  ));
}

class splashscreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return splashscreenpage();
  }
}

class splashscreenpage extends State<splashscreen>
    with SingleTickerProviderStateMixin {
  var _isVisible = true;
  late AnimationController animationController;
  late Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigateToHomePage);
  }

  navigateToHomePage() {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (BuildContext context) => home()),
        (Route<dynamic> route) => false);
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 1));
    animation = new CurvedAnimation(
        parent: animationController, curve: Curves.easeInCirc);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _isVisible = !_isVisible;
    });
    startTime();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/images/lottie lottie.gif',
                width: animation.value * 200,
                height: animation.value * 200,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Automatic Irrigation',
                style: TextStyle(
                    color: Color(0xFF032737),
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
