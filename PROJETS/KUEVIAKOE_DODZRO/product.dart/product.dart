import 'dart:convert';

Produit ecommerceFunction(String jsonString){
  final jsonData = json.decode(jsonString);
  return Produit(
    id: jsonData['id'],
    title: jsonData['title'],
    price: jsonData['price'],
    description: jsonData['description'],
  )
}

void main() {
  String jsonString = '{"id": 4, "title": "Handmade Fresh Table", "price": 687, "description": "Andy shoes are designed to keeping in...",}'
  Produit user = ecommerceFunction(jsonString);
  print(user.id);
  print(user.title);
  print(user.price);
  print(user.description);
}

class Produit {
  int id;
  String title;
  int price;
  String description;
  Map<String, dynamic> category;
  List<String> images;

  Produit({
    required this.id,
    required this.title,
    required this.price, 
    required this.description,
  });

}

class Category {
  int id;
  String name;
  String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });
}

