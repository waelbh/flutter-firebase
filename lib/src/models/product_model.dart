class Product {
  final String id;
  final String name;
  final double price;

  Product({required this.id, required this.name, required this.price});

  factory Product.fromFirestore(Map<String, dynamic> firestore) => Product(
        id: firestore['id'],
        name: firestore['name'],
        price: firestore['price'].toDouble(),
      );

  Map<String, dynamic> toFirestore() => {
        'id': id,
        'name': name,
        'price': price,
      };
}