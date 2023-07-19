import 'package:flutter/material.dart';
class Lh extends StatefulWidget {
  const Lh({super.key});

  @override
  State<Lh> createState() => _CultivableState();
}

class _CultivableState extends State<Lh> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.pop(context);
                      },
                      child: Card(
                        child: Container(
                          height: 30,
                          width: 30,
                          child: Icon(Icons.arrow_back,color: Colors.black,),
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
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
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("LIST OF HATCHERIES",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(child: Text("There are two types of hatcheries: one for handling only one species of fish (special hatchery), and the other where many fish species can be handled.",
                    style: TextStyle(fontSize: 15),),),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
