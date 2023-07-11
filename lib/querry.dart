import 'package:flutter/material.dart';

class Querry extends StatefulWidget {
  const Querry({super.key});

  @override
  State<Querry> createState() => _QuerryState();
}

class _QuerryState extends State<Querry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text("Querry",
        style: TextStyle(
          color: Colors.green
        ),),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              shape: RoundedRectangleBorder( //<-- SEE HERE
                side: BorderSide(width: 0),
                borderRadius: BorderRadius.circular(3),
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/fish.jpg")
              ),
              title: Text("This is my querry"),
              subtitle: Text("rakesh kumar das"),
              trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              shape: RoundedRectangleBorder( //<-- SEE HERE
                side: BorderSide(width: 0),
                borderRadius: BorderRadius.circular(3),
              ),
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/fish.jpg")
              ),
              title: Text("This is my querry"),
              subtitle: Text("rakesh kumar das"),
              trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: ListTile(
              shape: RoundedRectangleBorder( //<-- SEE HERE
                side: BorderSide(width: 0),
                borderRadius: BorderRadius.circular(3),
              ),
              leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/fish.jpg")
              ),
              title: Text("This is my querry"),
              subtitle: Text("rakesh kumar das"),
              trailing: Icon(Icons.arrow_forward_ios_outlined,size: 20,),
            ),
          )
        ],
      ),
    );
  }
}
