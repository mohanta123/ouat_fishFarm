import 'package:flutter/material.dart';

class Notification1 extends StatefulWidget {
  const Notification1({super.key});

  @override
  State<Notification1> createState() => _NotificationState();
}

class _NotificationState extends State<Notification1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 70,
            child: ListTile(
              title: Text("Notification for fish querry"),
              subtitle: Text("content of notification"),
            ),
          ),
          Divider(
            thickness: 2,
          ),
          Container(
            height: 70,
            child: ListTile(
              title: Text("Notification for fish querry"),
              subtitle: Text("content of notification"),
            ),
          ),
          Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}
