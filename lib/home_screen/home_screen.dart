import 'package:flutter/material.dart';
import 'package:ouat/category_screen/packaging_markt.dart';
import 'package:ouat/category_screen/type_fish_seed.dart';
import 'contacts.dart';
import '../category_screen/cultivable.dart';
import '../category_screen/fish_tech.dart';
import '../category_screen/list_hat.dart';

class Home_page extends StatefulWidget {
  const Home_page({super.key});

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        appBar: AppBar(
          leadingWidth: 400,
          backgroundColor: Colors.white,
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      color: Colors.grey[200],
                    ),
                    child: Image.asset("assets/ouat_logo.png")),
              ),
              SizedBox(
                width: 100,
              ),
              Text(
                "Rakesh Das",
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        body: Container(height:double.infinity,
          decoration: new BoxDecoration(
            color: const Color(0xff7c94b6),
            image: new DecorationImage(
              fit: BoxFit.cover,
              colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.1) ,BlendMode.saturation),
              image: new AssetImage(
                'assets/fish2.jpeg',
              ),
            ),
          ),child:  Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [



                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 180,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (builder) => Cultivable()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            shadowColor: Colors.black,
                            child: Center(
                                child: Text(
                                  "CULTIVABLE FISHES",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, color: Colors.green),
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 70,
                        width: 180,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (builder) => Type2()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            shadowColor: Colors.black,
                            child: Center(
                                child: Text(
                                  "TYPES OF FISH SEED",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, color: Colors.green),
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 180,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (builder) => Fishtec()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            shadowColor: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Center(
                                  child: Text(
                                    "FISH SEED PRODUCTION \n        TECHNOLOGY",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green),
                                  )),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 70,
                        width: 180,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (builder) => Pamc()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            shadowColor: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Center(
                                  child: Text("PSCKAGING \n& MARKETING",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green))),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 180,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (builder) => Lh()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            shadowColor: Colors.black,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Center(
                                  child: Text("LIST OF HATCHERIES",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.green))),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 70,
                        width: 180,
                        child: Card(
                          elevation: 3,
                          shadowColor: Colors.black,
                          child: Center(
                              child: Text("LIST OF KVK",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green))),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 70,
                        width: 180,
                        child: Card(
                          elevation: 3,
                          shadowColor: Colors.black,
                          child: Center(
                              child: Text("FARMERS LOGIN",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.green))),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        height: 70,
                        width: 180,
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (builder) => Contacts()),
                            );
                          },
                          child: Card(
                            elevation: 3,
                            shadowColor: Colors.black,
                            child: Center(
                                child: Text("CONTACT",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green))),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
        ),

      ),
    );
  }
}
