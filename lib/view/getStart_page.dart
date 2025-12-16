import 'package:flutter/material.dart';
import 'package:flutter_1/view/homePage.dart';

class GetstartPage extends StatefulWidget {
  const GetstartPage({super.key});

  @override
  State<GetstartPage> createState() => _GetstartPageState();
}

class _GetstartPageState extends State<GetstartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.only(top: 200,left: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 350,
              width: 350,
              child: Image.asset("asset/photo-1610632380989-680fe40816c6.jpeg"),
            ),
            Text("Fall in love with",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("Coffee in Bliddful",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            Text("Delight",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
            SizedBox(height: 10,),
            Text("Welcome to out cozy coffee conrner, where",style: TextStyle(color: Colors.white,)),
             Text("every cup is a delightful for you",style: TextStyle(color: Colors.white,)),
             SizedBox(height: 40,),
             InkWell(
              onTap: () {
                setState(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Homepage()));
                });
              },
               child: Container(
                height: 60,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 200, 108, 74),
                  borderRadius: BorderRadius.circular(15)
                ),
                child: Center(child: Text("Get Started",style: TextStyle(color: Colors.white,fontSize: 20),)),
               ),
             )
          ],
        ),
      ),
    );
  }
}