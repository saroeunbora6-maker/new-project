class OderprodcuModel {
  final int id;
  final int productID;
  final String name;
  final String image;
  final double ratting;
  final double deliveryFree;
  final List<Map<String,dynamic>>sixeOption;
  final List<String>type;
  final bool delivery;
  String?addressHome;
  String?addressName;

  OderprodcuModel({required this.id, required this.productID, required this.name, required this.image,required this.ratting, required this.sixeOption, required this.type,required this.delivery,required this.deliveryFree,required this.addressHome,required this.addressName});


}