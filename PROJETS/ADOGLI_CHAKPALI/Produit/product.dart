class Product {
  final int id;
  final String title;
  final double price;
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
}

Product FromJsonToProduct(Map<String, dynamic> json) {
  return Product(
    id: json['id'],
    title: json['title'],
    price: json['price'].toDouble(),
    description: json['description'],
    category: Category.fromJson(json['category']),
    images: List<String>.from(json['images']),
  );
}

Category FromJsonToCategory(Map<String, dynamic> json) {
  return Category(
    id: json['id'],
    name: json['name'],
    image: json['image'],
  );
}
