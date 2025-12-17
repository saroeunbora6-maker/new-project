import 'package:flutter/material.dart';
import 'package:flutter_1/controller/detail_controller.dart';
import 'package:flutter_1/model/oderProdcu_model.dart';
import 'package:flutter_1/view/orderProduc.dart';

class Detailpage extends StatefulWidget {
   final int  productHome;
   Detailpage({super.key,required this.productHome});

  @override
  State<Detailpage> createState() => _DetailpageState();
}
int SelectSizeIndex=0;
class _DetailpageState extends State<Detailpage> {
  @override
  Widget build(BuildContext context) {
    final product=detail_controller.firstWhere((iteem)=>iteem.productID==widget.productHome);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30,left: 30,right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){
                    Navigator.pop(context);
                  },
                   icon: Icon(Icons.arrow_back)),
                   Text("DetailPage",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                   IconButton(onPressed: (){},
                    icon:Icon(Icons.favorite))
                ],
              ),
            SizedBox(height: 15),
            Container(
              height: 200,
              width: 350,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                child: Image.asset("${product.image}",fit: BoxFit.cover,),
              ),
            ),
            SizedBox(height: 10),
            Text("${product.name}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Row(
              children: [
                Text("${product.type.join(",")}"),
                Spacer(),
                 product.delivery?Container(
                  height: 40,
                  width: 40,
                  child: Image.asset("asset/delivery-truck-3d-icon-png-download-10200640.webp")
                
                ):Text(""),
              ],
            ),
            Row(
              
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Colors.amber,)),
                Text("${product.ratting}"),
                Text("(204)"),
              ],
            ),
            Text("Desciption",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Text("${product.description}",style: TextStyle(fontSize: 20,color: const Color.fromARGB(221, 77, 75, 75)),),
            SizedBox(height: 10,),
            Text("Size",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            Row(
              children: [
                for(int i=0;i<product.sixeOption.length;i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                    onTap: () {
                      setState(() {
                        SelectSizeIndex=i;
                      });
                    },
                child:  Container(
                  height: 45,
                  width: 90,
                  decoration: BoxDecoration(
                    color: SelectSizeIndex==i?Colors.brown:Colors.grey,
                    borderRadius: BorderRadius.circular(15)
                  ),
                  child: Center(child: Text("${product.sixeOption[i].keys.join(",")}",style: TextStyle(color: SelectSizeIndex==i?Colors.white:Colors.black),)),
                ),
              ),
            ),
              ],
            ),
            SizedBox(height: 200,),
            Text("Price"),
            Row(
              children: [
                Text("\$${product.sixeOption[SelectSizeIndex].values.join(",")}"),
                Spacer(),
                InkWell(
                  onTap: () {
                    setState(() {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Orderproduc(ProductDetail: product.id,)));
                    });
                  },
                  child: Container(
                    height: 50,
                    width: 150,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 201, 115, 84),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text("Buy Now",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}