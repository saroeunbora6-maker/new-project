import 'package:flutter_1/model/detail_model.dart';
import 'package:flutter_1/model/oderProdcu_model.dart';

List<OderprodcuModel>order_prodcut=[
  OderprodcuModel(
    id: 1, 
    productID: 1,
    qty: 1,
     name: "Caffee", 
     image: "asset/heart-shaped-macha-latte-served-cafe-japan-352299085.webp", 
     ratting: 1.4, 
     deliveryFree: 1.2,
     sixeOption: [
      {
        "S":3.44,
      },
      {
        "L":4.66,
      },
      {
         "M":6.88,
      }
     ], 
     
     type: ["Hot","Ice"],
     delivery: true,
     addressHome: "Phnom Pech",
     addressName: " Phnom Peech Toul Kork, Stree 2004"
     ),
       OderprodcuModel(
    id: 2, 
    productID: 2,
    qty: 1,
     name: "Mocha", 
     image: "asset/pexels-david-bares-42311-189258.jpg", 
     ratting: 1.4, 
     deliveryFree: 0,
     sixeOption: [
      {
        "S":4.44,
      },
      {
        "L":5.66,
      },
      {
         "M":5.09,
      }
     ], 
     type: ["Hot","Ice"],
     delivery: true,
     addressHome: "Phnom Pech",
     addressName: " Phnom Peech Toul Kork, Stree 2004"
     ),
      OderprodcuModel(
    id: 3, 
    productID: 3,
    qty: 1,
     name: "Mocha", 
     image: "asset/dop_3.jpg.webp", 
     ratting: 1.4, 
     deliveryFree: 2.3,
     sixeOption: [
      {
        "S":4.44,
      },
      {
        "L":5.66,
      },
   
     ], 
     type: ["Hot","Ice"],
     delivery: false,
     addressHome: "Phnom Pech",
     addressName: " Phnom Peech Toul Kork, Stree 2004"
     ),
      OderprodcuModel(
    id: 4, 
    productID: 4,
    qty: 1,
     name: "Mocha", 
     image: "asset/composition-cup-caffe-latte-coffee-260nw-1613234329.webp", 
     ratting: 1.4, 
     deliveryFree: 0,
     sixeOption: [
      {
        "S":4.44,
      },
      {
        "L":5.66,
      },
    
     ], 
     type: ["Hot","Ice"],
     delivery: false,
     addressHome: "Phnom Pech",
     addressName: " Phnom Peech Toul Kork, Stree 2004"
     ),
];