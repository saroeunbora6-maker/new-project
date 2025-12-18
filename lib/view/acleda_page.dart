import 'package:flutter/material.dart';

class AcledaPage extends StatelessWidget {
  const AcledaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
         backgroundColor: const Color.fromARGB(255, 5, 82, 121),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              spacing: 20,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
                Text("KHQR",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                Spacer(),
               CircleAvatar(
                radius: 25,
                backgroundColor: Colors.grey[200],
                
                child: Icon(
                  Icons.account_balance,
                  color: Colors.blue,
                  size: 28,
                  
                ),
              ),
            
              ],
            ),
            
          ),
          SizedBox(height: 20,),
          Container(
            height: 450,
            width: 320,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  blurRadius: 5
                )
              ],
            ),
            
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(15))
                  ),
                  child: Center(
                 child:  Text("KHQR",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Text("SAROEUN BORA"),
                ),
                 Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("0",style: TextStyle(fontSize: 25),),
                ),
                Padding(
                  padding: const EdgeInsets.all(18),
                  child: Container(
                    height: 250,
                    width: 300,
                    child: Image.asset("asset/2025-12-19 02.10.10.jpg"),
                  ),
                ),
              ],
              
            ),
            
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 15,left: 45),
                child: Text("គណនីចម្បង",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
              ),
            ],
          ),
          SizedBox(height: 8,),
          Container(
            height: 70,
            width: 340,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 207, 203, 203),
              borderRadius: BorderRadius.circular(15)
            ),
            child: Row(
              children: [
                Container(
                  height: double.infinity,
                  width: 200,
                 child: Padding(
                   padding: const EdgeInsets.all(12),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Text("060 392 037 (Reil)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                        Text("060 392 037 (Dolla)",style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                     ],
                   ),
                 ),
                 
                ),
                SizedBox(width: 80,),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.transform_rounded,color: Colors.white,),
                ),
              ],
            ),
          ),
          Padding(
             padding: const EdgeInsets.only(top: 20,left: 40),
            child: Row(
              spacing: 60,
              children: [
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color:Color.fromARGB(255, 107, 105, 105),
                        shape: BoxShape.circle
                      ),
                       child: Center(child: Icon(Icons.save_alt_outlined,size: 30,)),
                    ),
                    SizedBox(height: 10,),
                    Text("Save",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                  ],
                ),
                
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                         color:Color.fromARGB(255, 107, 105, 105),
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Icon(Icons.deblur,size: 30,)),
                    ),
                    SizedBox(height: 10,),
                    Text("Denefit",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                  ],
                ),
                
                Column(
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        color:Color.fromARGB(255, 107, 105, 105),
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Icon(Icons.share_outlined,size: 30,)),
                    ),
                    SizedBox(height: 10,),
                    Text("share",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold),)
                  ],
                ),
                
                
              ],
            ),
          )
        ],
      ),
    );
  }
}