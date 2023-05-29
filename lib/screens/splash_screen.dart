import 'dart:async';

import 'package:flutter/material.dart';
import 'package:scorpion_wallet/screens/login_screen.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => InitState ();
}

class InitState extends State<splashScreen> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  startTimer() async{
    var duration = Duration(seconds: 3);
    return new Timer(duration, loginRoute);
  }

  loginRoute() {
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) => loginScreen()
    ));
  }

  @override
  Widget build(BuildContext context) {
    return initWidget();
  }

initWidget() {
  return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: new Color(0xffF5591F),
              gradient: LinearGradient(
                colors: [(new Color(0xffF5591F)), (new Color(0xffF2861E))],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )
            ),
          ),
          Center(
            child: Container(
              child: Image.asset("assets/images/logo.png"),
            ),
          )
        ],
      ),
    );
 }
}