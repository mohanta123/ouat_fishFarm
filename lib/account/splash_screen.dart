
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../home_screen/button_navication_screen.dart';
import 'login_screen.dart';


class Slash_screen extends StatefulWidget {
  const Slash_screen({Key? key}) : super(key: key);

  @override
  State<Slash_screen> createState() => _Slash_screenState();
}

class _Slash_screenState extends State<Slash_screen> {
  void initState() {

    super.initState();
    check();

  }


  Future<void> check() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    print("kkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkkk");

    if ((preferences.getString("usertype")?? "") == "") {
      Timer(
        Duration(seconds: 3),
            () => Navigator.of(context).pushAndRemoveUntil(
          MaterialPageRoute(builder: (BuildContext context) => Login()),
              (Route<dynamic> route) => false,
        ),
      );
      print("GGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGGG");
    } else {
      print("HHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH");

      if (preferences.getString("usertype") == "login") {
        Timer(
          Duration(seconds: 3),
              () => Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (BuildContext context) => Button_navication()),
                (Route<dynamic> route) => false,
          ),
        );
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Center(
                  child: Image.asset(
                    "assets/ouat_logo.png",
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/flag-removebg-preview-removebg-preview.png",height: deviceHeight*0.06,width: deviceWidth*0.2,),
            Text("Appman Technologies",style: TextStyle(fontSize: 22),),
          ],
        ),
      ),
    );
  }
}
