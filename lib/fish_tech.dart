import 'package:flutter/material.dart';
class Fishtec extends StatefulWidget {
  const Fishtec({super.key});

  @override
  State<Fishtec> createState() => _CultivableState();
}

class _CultivableState extends State<Fishtec> {
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
                child: Text("FISH SEEDPRODUCTION TECHNOLOGY",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(child: Text("The fish seed is obtained from three sources – riverine, hatcheries and bundhs. The collection of seed from riverine source was an age old practice. This method is strenuous and we get the mixture of wanted and unwanted fish seed. Hatcheries are the best way of getting fish seed",style: TextStyle(fontSize: 15),),),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
