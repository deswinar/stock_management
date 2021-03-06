import 'package:cloud_firestore/cloud_firestore.dart';

class Product {
  String id;
  String name;
  String description;
  int qty;
  String category;
  String imageUrl;
  Timestamp lastUpdated;

  Product({this.id, this.name, this.description, this.qty, this.category, this.imageUrl, this.lastUpdated});

  factory Product.fromMap(Map data) {
    return Product(
      id: data['id'] ?? '',
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      qty: data['qty'] ?? 0,
      category: data['category'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      lastUpdated: data['lastUpdated'] ?? null,
    );
  }

  factory Product.fromFirestore(DocumentSnapshot doc) {
    Map data = doc.data;
    return Product(
      id: doc.documentID,
      name: data['name'] ?? '',
      description: data['description'] ?? '',
      qty: data['qty'] ?? 0,
      category: data['category'] ?? '',
      imageUrl: data['imageUrl'] ?? '',
      lastUpdated: data['lastUpdated'] ?? null,
    );
  }
}