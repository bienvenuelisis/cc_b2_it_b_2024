class Product {
  int id;
  String title;
  double price;
  String description;
  Category category;
  List<String> images;

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
      price: json['price'].toDouble(),
      description: json['description'],
      category: Category.fromJson(json['category']),
      images: List<String>.from(json['images']),
    );
  }
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

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(
      id: json['id'],
      name: json['name'],
      image: json['image'],
    );
  }
}

void main() {
  String jsonString = '''
    {
      "id": 4,
      "title": "Handmade Fresh Table",
      "price": 687,
      "description": "Andy shoes are designed to keeping in...",
      "category": {
        "id": 5,
        "name": "Others",
        "image": "https://placeimg.com/640/480/any?r=0.591926261873231"
      },
      "images": [
        "https://placeimg.com/640/480/any?r=0.9178516507833767",
        "https://placeimg.com/640/480/any?r=0.9300320592588625",
        "https://placeimg.com/640/480/any?r=0.8807778235430017"
      ]
    }
  ''';

  Map<String, dynamic> jsonMap = json.decode(jsonString);

  Product product = Product.fromJson(jsonMap);

  print('Product ID: ${product.id}');
  print('Product Title: ${product.title}');
  print('Product Price: ${product.price}');
  print('Product Description: ${product.description}');
  print('Product Category ID: ${product.category.id}');
  print('Product Category Name: ${product.category.name}');
  print('Product Category Image: ${product.category.image}');
  print('Product Images:');
  product.images.forEach((image) => print(image));
}
