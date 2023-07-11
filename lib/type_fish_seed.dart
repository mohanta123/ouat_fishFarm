import 'package:flutter/material.dart';
class Type2 extends StatefulWidget {
  const Type2({super.key});

  @override
  State<Type2> createState() => _CultivableState();
}

class _CultivableState extends State<Type2> {
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
                child: Text("TYPE OF FISH SEED",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Center(child: Text("Breeder - made from a nucleus seed\n"
                      "Foundation - made from breeder seeds.\n"
                      "Registered - progeny of a foundation seed that maintains its purity according to specified standards.\n"
                      "Certified - progeny of foundation seeds made by registered seed growers.",style: TextStyle(fontSize: 15),),),

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
