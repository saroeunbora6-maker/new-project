import 'package:flutter/material.dart';
import 'package:flutter_1/controller/category_controller.dart';
import 'package:flutter_1/controller/product_controller.dart';
import 'package:flutter_1/controller/promot_controller.dart';
import 'package:flutter_1/view/detailPage.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class Homepage extends StatefulWidget {
   Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}
  var SelectIndec=0;

class _HomepageState extends State<Homepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
              
              Container(
                height: 300,
                width: double.infinity,
                color: Colors.black,
               child: Padding(
                 padding: const EdgeInsets.only(top: 50,left: 20,right:20 ),
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Text("Location",style: TextStyle(fontSize: 15,color: Colors.white),),
                   Text("Blizen, Tanjungbalal",style: TextStyle(fontSize: 25,color: Colors.white),),
                   SizedBox(height: 20,),
                   Row(
                     children: [
                  
                       Container(
                        height: 55,
                        width: 290,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.grey,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5)
                            )
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 15),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(color: Colors.white),
                              suffixIcon: Icon(Icons.search,color: Colors.white,),
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      
                       ),
                       SizedBox(width: 10,),
                       Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 171, 96, 68),
                          borderRadius: BorderRadius.circular(15)
                        ),
                        child: Icon(Icons.menu,color: Colors.white,),
                       ),
                     ],
                   ),
                  ],
                  
                 ),
               ),
                
              ),
              Positioned(
                top: 220,
                left: 20,
                right: 20,
                bottom: -80,
                child: ImageSlideshow(
                width: 350,
                height: 200,
                initialPage: 0,
                indicatorColor: Colors.blue,
                indicatorBackgroundColor: Colors.grey,
                autoPlayInterval: 3000,
                isLoop: true,
                children: List.generate(
                  promot.length,
                  (index) {
                    return ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        promot[index].ImageUrl,
                        fit: BoxFit.cover,
                      ),
                    );
                  },
                ),
              ),

              )
          ],
            ),
            SizedBox(height: 90,),
            SizedBox(
            height: 55,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: catecory.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 5,right: 5),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        SelectIndec=index;
                      });
                    },
                    child:Container(
                      width: 100,
                      alignment: Alignment.center,
                      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                      decoration: BoxDecoration(
                        color:SelectIndec==index?const Color.fromARGB(255, 155, 102, 83):Colors.grey, // 👈 makes it visible
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(
                        catecory[index],
                        style: TextStyle(
                          color:SelectIndec==index? Colors.white:const Color.fromARGB(255, 24, 22, 22),
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
            GridView.builder(
              shrinkWrap: true, 
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:2,
              mainAxisSpacing: 30,
              crossAxisSpacing: 10,
              childAspectRatio: 1/1.3,
          ), 
            itemCount:product_controler.length ,
            itemBuilder: (context,index){
              final pro=product_controler[index];
            return Padding(
              padding: const EdgeInsets.only(left: 10,right: 10),
               child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Detailpage()));
                },
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(15),
                     color: Colors.white,
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Container(
                         height: 140,
                         width: double.infinity,
                         child: Stack(
                           children: [
                             ClipRRect(
                               borderRadius: BorderRadius.circular(15),
                               child: Image.asset(
                  pro.image,
                  width: double.infinity,
                  height: 140,
                  fit: BoxFit.cover,
                               ),
                             ),
                             Positioned(
                               top: 5,
                               right: 15,
                               child: Container(
                  child: Row(
                    children: [
                      Icon(Icons.star,color: Colors.amber,),
                       Icon(Icons.star,color: Colors.amber,),
                       Text("${pro.ratring}",style: TextStyle(fontSize: 20,color: Colors.white),)
                 
                    ],
                  ),
                               ),
                             ),
                           ],
                         ),
                       ),
                       SizedBox(height: 10),
                       Text(
                         "${pro.name}",
                         style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                       ),
                       Text("${pro.desciption}"),
                       Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: [
                           Text("\$${pro.price}",
                               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                           Container(
                             height: 40,
                             width: 40,
                             decoration: BoxDecoration(
                               color: Color.fromARGB(255, 224, 94, 137),
                               borderRadius: BorderRadius.circular(15),
                             ),
                             child: Center(
                  child: Text(
                               "+",
                               style: TextStyle(fontSize: 25, color: Colors.white),
                             )),
                           ),
                         ],
                       ),
                     ],
                   ),
                 ),
               )


            );
            })
          ],
        ),
      ),
    );
  }
}