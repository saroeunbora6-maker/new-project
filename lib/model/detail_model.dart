class DetailModel {
  final int id;
  final int productID;
  final String name;
  final String image;
  final String description;
  final double ratting;
  final List<Map<String,dynamic>>sixeOption;
  final List<String>type;
  final bool delivery;


  DetailModel({required this.id, required this.productID, required this.name, required this.image, required this.description, required this.ratting, required this.sixeOption, required this.type,required this.delivery});


}