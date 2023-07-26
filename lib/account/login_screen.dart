import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:ouat/account/sign_up.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import '../home_screen/button_navication_screen.dart';
import '../constraints/urls.dart';

class Login extends StatefulWidget {
  const Login({super.key});
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
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

  ///login using get method
  void showInSnackBar(String value) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(value.toString()),
    ));
  }

  TextEditingController userName_controller = TextEditingController();
  TextEditingController password_controller = TextEditingController();
  Future loginID() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String api =
        login + userName_controller.text + "/" + password_controller.text;
    final response = await http.get(Uri.parse(api));
    print(response.statusCode);
    if (response.statusCode == 200) {
      Map mjson = json.decode(response.body);
      print(mjson);
      prefs.setString("usertype", "login");
      prefs.setString("userId", mjson["userId"].toString());
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => Button_navication()),
          (Route<dynamic> route) => false);
    } else {
      //Navigator.of(context).pop();
      showInSnackBar(
        "Invalid EmpId & Password.",
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    double deviceWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Form(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(child: Image.asset("assets/ouat_logo.png")),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "User Name*",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please User Name*';
                          } else {
                            return null;
                          }
                        },
                        controller: userName_controller,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                          ),
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText: 'Enter User Name*',
                          labelText: "User Name*",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "Password*",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please Enter Password';
                          } else {
                            return null;
                          }
                        },
                        controller: password_controller,
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
                            icon: Icon(passwordVisible
                                ? Icons.visibility
                                : Icons.visibility_off),
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
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          Text("Remember Me ?"),
                        ],
                      ),
                      Center(
                        child: Container(
                            height: 35,
                            width: 120,
                            child: ElevatedButton(
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    //print(empid.text);
                                    await loginID();
                                  }
                                },
                                child: Text("Login"))),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account! "),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (builder) => Registration()),
                              );
                            },
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
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
        ),
      ),
    );
  }
}
