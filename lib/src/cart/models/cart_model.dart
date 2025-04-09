// To parse this JSON data, do
//
//     final cartModel = cartModelFromJson(jsonString);

import 'dart:convert';

List<CartModel> cartModelFromJson(String str) => List<CartModel>.from(json.decode(str).map((x) => CartModel.fromJson(x)));

String cartModelToJson(List<CartModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CartModel {
    final int id;
    final Product product;
    final int quantity;

    CartModel({
        required this.id,
        required this.product,
        required this.quantity,

    });

    factory CartModel.fromJson(Map<String, dynamic> json) => CartModel(
        id: json["id"],
        product: Product.fromJson(json["product"]),
        quantity: json["quantity"],

    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "product": product.toJson(),
        "quantity": quantity,

    };
}

class Product {
    final int id;
    final String title;
    final double price;
    final String description;

    final double ratings;

    final List<String> imageUrls;
    final DateTime createdAt;
    final int category;
    

    Product({
        required this.id,
        required this.title,
        required this.price,
        required this.description,

        required this.ratings,

        required this.imageUrls,
        required this.createdAt,
        required this.category,
    });

    factory Product.fromJson(Map<String, dynamic> json) => Product(
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
