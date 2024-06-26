class Product {
  final int id;
  final String title;
  final int price;
  final String description;
  final Map<String, dynamic> category;
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
      category: json['category'],
      images: List<String>.from(json['images']),
    );
  }
}