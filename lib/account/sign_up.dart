import 'package:flutter/material.dart';

import '../home_screen/button_navication_screen.dart';
import 'login_screen.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Center(child: Image.asset("assets/ouat_logo.png",height: 200,)),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.person,
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: 'Rakesh Das',
                    labelText: "Full Name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Mobile Number",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.phone,
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: '934875****',
                    labelText: "Mobile No.",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: '*******',
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Confirm password",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                ),
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.lock,
                    ),
                    fillColor: Colors.grey.shade100,
                    filled: true,
                    hintText: '',
                    labelText: "Confirm password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Center(
                  child: Container(
                      height: 35,
                      width: 120,
                      child: ElevatedButton(onPressed: (){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) =>  Button_navication()),
                        );
                      }, child: Text("Submit"))),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account! "),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (builder) =>  Login(

                          )),
                        );
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            color: Colors.blue, fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
