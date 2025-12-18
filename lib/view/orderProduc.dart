
import 'package:flutter/material.dart';
import 'package:flutter_1/controller/orderproduct_controoler.dart';
import 'package:flutter_1/view/homePage.dart';

class Orderproduc extends StatefulWidget {
  int ProductDetail;
 Orderproduc({super.key,required this.ProductDetail});

  @override
  State<Orderproduc> createState() => _OrderproducState();
}
bool delivery=true;

class _OrderproducState extends State<Orderproduc> {
  @override
  Widget build(BuildContext context) {
    final produc_Order=order_prodcut.firstWhere((item)=>item.productID==widget.ProductDetail);
     int currenIndex=order_prodcut.indexWhere((element) => element.productID==widget.ProductDetail,);
     double price = produc_Order.sixeOption[SelectIndec].values.first;

   
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40,left: 10,right: 10),
        child: Column(
          children: [
            Row(
              
              children: [
                IconButton(onPressed: (){
                  Navigator.pop(context);
                }, icon: Icon(Icons.arrow_back_ios_new_rounded)),
                SizedBox(width: 120,),
                Text("Order",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
              ],
            ),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 233, 220, 220)
              ),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        delivery=true;
                      });
                    },
                    child: Container(
                      height: double.infinity,
                      width: 175,
                       decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                     color:delivery? const Color.fromARGB(255, 203, 135, 111):Colors.transparent
                                  ),
                                  child: Center(child: Text("Delivery",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                    
                    ),
                  ),
                   InkWell(
                    onTap: () {
                      setState(() {
                        delivery=false;
                      });
                    },
                     child: Container(
                      height: double.infinity,
                      width: 175,
                       decoration: BoxDecoration(
                                     borderRadius: BorderRadius.circular(15),
                                     color: delivery?Colors.transparent:const Color.fromARGB(255, 203, 135, 111)

                                   ),
                                       child: Center(child: Text("Pick Up",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                                       ),
                   ),
                ],
              ),
            ),
            SizedBox(height: 10,),
           produc_Order.delivery && delivery? Container(
              height: 150,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Delivery address",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("${produc_Order.addressHome}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  Text("${produc_Order.addressName}",style: TextStyle(fontSize: 20),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      InkWell(
                       onTap: () {
                        TextEditingController textEditingController=TextEditingController();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                               backgroundColor: Colors.grey[300], 
                              child: Container(
                                height: 200,
                                width: 300,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      "Edit Address",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    TextField(
                                      controller: textEditingController,
                                      decoration: InputDecoration(
                                        hintText: " Enter new Address",
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text("Cancel"),
                                        ),
                                       ElevatedButton(
                                        onPressed: () {
                                          String value = textEditingController.text;

                                          if (currenIndex != -1 && value.isNotEmpty) {
                                            setState(() {
                                               order_prodcut[currenIndex] =
                                                  order_prodcut[currenIndex].copywith(addressHome: value);
                                            });
                                          }
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Save"),
                                      ),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },

                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Icon(Icons.edit_note_outlined),
                                    SizedBox(width: 5),
                                    Text("Edit Address"),
                                  ],
                                ),
                              ),
                            ),
                          ),

                        SizedBox(width: 20,),
                          InkWell(
                       onTap: () {
                        TextEditingController textEditingController=TextEditingController();
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                               backgroundColor: Colors.grey[300], 
                              child: Container(
                                height: 200,
                                width: 300,
                                padding: const EdgeInsets.all(16),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Text(
                                      "Edit Address",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    TextField(
                                      controller: textEditingController,
                                      decoration: InputDecoration(
                                        hintText: " Enter new Address",
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () => Navigator.pop(context),
                                          child: const Text("Cancel"),
                                        ),
                                       ElevatedButton(
                                        onPressed: () {
                                          String value = textEditingController.text;

                                          if (currenIndex != -1 && value.isNotEmpty) {
                                            setState(() {
                                               order_prodcut[currenIndex] =
                                                  order_prodcut[currenIndex].copywith(addressName: value);
                                            });
                                          }
                                          Navigator.pop(context);
                                        },
                                        child: const Text("Save"),
                                      ),

                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },

                            child: Container(
                              height: 40,
                              width: 150,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(10),
                                child: Row(
                                  children: [
                                    Icon(Icons.edit_note_outlined),
                                    SizedBox(width: 5),
                                    Text("Add Address"),
                                  ],
                                ),
                              ),
                            ),
                          ),
                    ],
                  )
                ],
              ),
            ):Text(""),
            SizedBox(height: 10,),
            Container(
              height: 70,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 5
                  )
                ],
              ),
              child: Row(
                children: [
                  Container(
                    height: double.infinity,
                    width: 70,
                    child: ClipRRect(
                      borderRadius: BorderRadiusGeometry.circular(15),
                      child: Image.asset("${produc_Order.image}",fit: BoxFit.cover,)
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: Column(
                    children: [
                       Text("${produc_Order.name}",style: TextStyle(fontSize:20,fontWeight: FontWeight.bold),),
                       Text("Deep From")
                    ],
                   ),
                 ),
                 Spacer(),
                 Container(
                  height: 30,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            if(produc_Order.qty>1){
                              produc_Order.qty -=1;
                            }
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                              shape: BoxShape.circle
                          ),
                          child: Center(child: Text("-",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle
                        ),
                        child: Center(child: Text("${produc_Order.qty}",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            produc_Order.qty+=1;
                          });
                        },
                        child: Container(
                          height: 30,
                          width: 30,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                              shape: BoxShape.circle
                          ),
                          child: Center(child: Text("+",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
                        ),
                      )
                    ],
                  ),
                 )
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 4,
                  )
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.discount),
                  Text("1 Discount is Applies",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                  Icon(Icons.arrow_forward_ios)
                ],
              ),
            ),
            SizedBox(height: 40,),
            Container(
              height: 120,
              width: 350,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Payment Summary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Row(
                    children: [
                      Text("Price",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),),
                      Spacer(),
                      Text("${price}"),
                    ],
                  ),
                  SizedBox(height: 10,),
                  Row(
                    children: [
                      Text("Delivery Free",style: TextStyle(fontSize: 18,fontWeight: FontWeight.normal),)
                    ],
                  )

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

