
import 'dart:convert';

void main() {
  String invalidJsonString = '{"name", "age",}'; 

  try {
    Map<String, dynamic> decodedJson = jsonDecoded(invalidJsonString);
    print(decodedJson);
  } catch (e) {
    print('Erreur lors du décodage du JSON: $e');
    
  }
}

void main() {
  final jsonString = '''
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

  final decodedJson = jsonDecoded(jsonString);
  final product = Product.fromJson(decodedJson);

  print(product.title); 
}
