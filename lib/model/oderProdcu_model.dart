class OderprodcuModel {
  final int id;
  final int productID;
  int qty;
  final String name;
  final String image;
  final double ratting;
  final double deliveryFree;
  final List<Map<String,dynamic>>sixeOption;
  final List<String>type;
  final bool delivery;
  String?addressHome;
  String?addressName;

  OderprodcuModel({required this.id, required this.productID, required this.name, required this.image,required this.ratting, required this.sixeOption, required this.type,required this.delivery,required this.deliveryFree,required this.addressHome,required this.addressName,required this.qty});
 
  OderprodcuModel copywith({
   int ?id,
   int ?productID,
   int ?qty,
   String ?name,
   String ?image,
   double ?ratting,
  double ?deliveryFree,
  List<Map<String,dynamic>>?sixeOption,
   List<String>?type,
   bool ?delivery,
  String?addressHome,
  String?addressName,
  }){return OderprodcuModel(
    id: id ?? this.id, 
    productID: productID ?? this.productID, 
    qty: qty?? this.qty,
    name: name ?? this.name, 
    image: image ?? this.image,
     ratting: ratting ?? this.ratting,
      sixeOption: sixeOption ?? this.sixeOption, 
      type: type ?? this.type, 
      delivery: delivery ?? this.delivery, 
      deliveryFree: deliveryFree?? this.deliveryFree, 
      addressHome: addressHome ?? this.addressHome, 
      addressName: addressName ?? this.addressName
      
      );}
}