import 'package:flutter/material.dart';
class Pamc extends StatefulWidget {
  const Pamc({super.key});

  @override
  State<Pamc> createState() => _CultivableState();
}

class _CultivableState extends State<Pamc> {
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
                child: Text("PACKAGING AND MARKETING",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(child: Text("Packaging is an often-missed opportunity for a brand's marketing message, which is so much more than logos, color palettes and slogans. Marketing pertains to the way you package your goods, and the subtle but important messages you send to your customers when you use efficient, sustainable packaging.",
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
