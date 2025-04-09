import 'dart:convert';

List<Products> productsFromJson(String str) => List<Products>.from(json.decode(str).map((x) => Products.fromJson(x)));

String productsToJson(List<Products> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Products {
    final int id;
    final String title;
    final double price;
    final String description;
    
    
    final double ratings;
    
    final List<String> imageUrls;
    
    final DateTime createdAt;
    final int category;
    

    Products({
        required this.id,
        required this.title,
        required this.price,
        required this.description,

        required this.ratings,
        
        required this.imageUrls,
        
        required this.createdAt,
        required this.category,
       
    });

    factory Products.fromJson(Map<String, dynamic> json) => Products(
        id: json["id"],
        title: json["title"],
        price: json["price"]?.toDouble(),
        description: json["description"],
        
        ratings: json["ratings"]?.toDouble(),
        
        imageUrls: List<String>.from(json["imageUrls"].map((x) => x)),
        
        createdAt: DateTime.parse(json["created_at"]),
        category: json["category"],
        
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "price": price,
        "description": description,

        "ratings": ratings,
        
        "imageUrls": List<dynamic>.from(imageUrls.map((x) => x)),
        
        "created_at": createdAt.toIso8601String(),
        "category": category,
        
    };
}
