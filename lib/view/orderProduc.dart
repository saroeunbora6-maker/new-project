import 'package:flutter/material.dart';
import 'package:flutter_1/controller/orderproduct_controoler.dart';

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
                                      decoration: InputDecoration(
                                        hintText: "Address",
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
                        Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),                          
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Icon(Icons.edit_note_outlined),
                              Text("Edit Address"),
                            ],
                          ),
                        ),

                        ),
                    ],
                  )
                ],
              ),
            ):Text(""),
          ],
        ),
      ),
    );
  }
}