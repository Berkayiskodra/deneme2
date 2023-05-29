// ignore_for_file: prefer_const_constructors, sort_child_properties_last, unnecessary_new, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:scorpion_wallet/screens/home_screen.dart';

import 'screens/signup_screen.dart';


class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => InitState();
}

class InitState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return initWidget();
  }


initWidget() {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(90)),
              color: Color(0xffF5591F),
              gradient: LinearGradient(
                colors: [(new Color(0xffF5591F)), Color.fromARGB(255, 242, 134, 30)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  child: Image.asset("assets/images/logo.png"),
                  height: 130,
                  width: 130,
                ),
              Container(
                margin: EdgeInsets.only(right: 20, top: 20),
                alignment: Alignment.bottomRight,
                child: Text(
                  "login",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
                  ),
                ),
              )
              ],
            ),
          ),
      ),
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, top:70),
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[200],
          boxShadow: [BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: Color(0xffEEEEEE)
          )]
        ),
        alignment: Alignment.center,
        child: TextField(
          cursorColor: Color(0xffF5591F),
          decoration: InputDecoration(
            icon: Icon(
              Icons.email,
              color:  Color(0xffF5591F),
            ),
            hintText: "Enter Email",
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),
      
      Container(
        margin: EdgeInsets.only(left: 20, right: 20, top:20),
        padding: EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: Colors.grey[200],
          boxShadow: [BoxShadow(
            offset: Offset(0, 10),
            blurRadius: 50,
            color: Color(0xffEEEEEE)
          )]
        ),
        alignment: Alignment.center,
        child: TextField(
          obscureText: true,
          cursorColor: Color(0xffF5591F),
          decoration: InputDecoration(
            icon: Icon(
              Icons.vpn_key,
              color:  Color(0xffF5591F),
            ),
            hintText: "Enter Password",
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
          ),
        ),
      ),

      Container(
        margin: EdgeInsets.only(top: 20, right:20),
        alignment: Alignment.centerRight,
        child: GestureDetector(
          child: Text("Forget Password?"),
          onTap: () => {

          },
        ),
      ),

      GestureDetector(
        onTap: () => {
          Navigator.push(context, MaterialPageRoute(
                  builder:  (context) => HomeScreen()
          ))
        },
        child: Container(
          margin: EdgeInsets.only(left: 20, right: 20, top: 70),
          padding: EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.center,
          height: 54,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [(new Color(0xffF5591F)), (new Color(0xffF2861E))],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            borderRadius: BorderRadius.circular(50),
            boxShadow: [BoxShadow(
              offset: Offset(0, 10),
              blurRadius: 50,
              color: Color(0xffEEEEEE)
            )],
          ),
          child: Text(
            "LOGIN",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),

      Container(
        margin: EdgeInsets.only(top: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("don't Have Account?"),
            GestureDetector(
              onTap: () => {
                Navigator.push(context, MaterialPageRoute(
                  builder:  (context) => signUpScreen()
                ))
              },
              child: Text(
                "Register Now",
                style: TextStyle(
                  color: Color(0xffF5591F)
                ),
              ),
            ),
          ],
        ),
      )

        ],
      ),
    ),
  );
 }
}