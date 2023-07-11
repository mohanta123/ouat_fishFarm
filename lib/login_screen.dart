import 'package:flutter/material.dart';
import 'package:ouat/sign_up.dart';

import 'button_navication_screen.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isChecked = false;
  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.pressed,
      MaterialState.hovered,
      MaterialState.focused,
    };
    if (states.any(interactiveStates.contains)) {
      return Colors.indigo;
    }
    return Colors.indigo;
  }

  bool passwordVisible = true;
  void initSate() {
    super.initState();
    passwordVisible = false;
  }
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Center(child: Image.asset("assets/ouat_logo.png")),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("User Name",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                      fillColor: Colors.grey.shade100,
                      filled: true,
                      hintText: 'Rakesh Das',
                      labelText: "User Name",
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
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                      hintText: "Password",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: "Password",
                      //helperText: "Password must contain special character",
                      helperStyle: TextStyle(color: Colors.indigo[900]),
                      suffixIcon: IconButton(
                        icon: Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
                        onPressed: () {
                          setState(
                                () {
                              passwordVisible = !passwordVisible;
                            },
                          );
                        },
                      ),
                      alignLabelWithHint: false,
                      filled: true,
                    ),
                    keyboardType: TextInputType.visiblePassword,
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Checkbox(value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },),
                      Text("Remember Me ?"),

                    ],
                  ),
                  Center(
                    child: Container(
                        height: 35,
                        width:120,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (builder) =>  Button_navication()),
                          );


                        }, child: Text("Login"))),
                  ),
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Don't have an account! "),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (builder) =>  Registration(

                            )),
                         );
                        },
                        child: Text(
                          "Sign Up",
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

      ),
    );
  }
}
