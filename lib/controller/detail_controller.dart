import 'package:flutter_1/model/detail_model.dart';

List<DetailModel>detail_controller=[
  DetailModel(
    id: 1, 
    productID: 1,
     name: "Caffee", 
     image: "asset/heart-shaped-macha-latte-served-cafe-japan-352299085.webp", 
     description:"thsi coffee is from cambodai, it is very Smell" , 
     ratting: 1.4, 
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
     delivery: true
     ),
       DetailModel(
    id: 2, 
    productID: 2,
     name: "Mocha", 
     image: "asset/pexels-david-bares-42311-189258.jpg", 
     description:"thsi Mocha is from cambodai, it is very Smell" , 
     ratting: 1.4, 
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
     ),
           DetailModel(
    id: 3, 
    productID: 3,
     name: "Mocha", 
     image: "asset/dop_3.jpg.webp", 
     description:"thsi Mocha is from cambodai, it is very Smell" , 
     ratting: 1.4, 
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
     ),
           DetailModel(
    id: 4, 
    productID: 4,
     name: "Mocha", 
     image: "asset/composition-cup-caffe-latte-coffee-260nw-1613234329.webp", 
     description:"thsi Mocha is from cambodai, it is very Smell" , 
     ratting: 1.4, 
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
     ),
];