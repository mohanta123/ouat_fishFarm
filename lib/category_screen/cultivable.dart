import 'package:flutter/material.dart';
class Cultivable extends StatefulWidget {
  const Cultivable({super.key});

  @override
  State<Cultivable> createState() => _CultivableState();
}

class _CultivableState extends State<Cultivable> {
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
                child: Text("CULTIVABLE FISHES",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(child: Text(" They should grow in appreciable size in a short period of time.They should be able to coexist with other fishes and should not harm other fishes or interfere in their activities.",
                  style: TextStyle(fontSize: 15),)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
