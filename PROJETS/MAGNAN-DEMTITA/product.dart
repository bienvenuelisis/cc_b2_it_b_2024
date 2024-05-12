import 'dart:convert';

class Product {
  final int id;
  final String title;
  final int price;
  final String description;
  final Category category;
  final List<String> images;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.images,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      description: json['description'],
      category: Category.fromJson(json['category']),
      images: List<String>.from(json['images'].map((x) => x)),
    );
  }
}

class Category {
  final int id;
  final String name;
  final String image;

  Category({
    required this.id,
    required this.name,
    required this.image,
  });

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}

void main() {
  String jsonString = '{...}'; // Remplacez ceci par votre chaîne JSON
  Map<String, dynamic> jsonData = jsonDecode(jsonString);
  Product product = Product.fromJson(jsonData);
  print(product.title); // Affiche le titre du produit
}
