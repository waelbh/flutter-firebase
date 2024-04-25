import 'package:cloud_firestore/cloud_firestore.dart';
import '../../models/product_model.dart';

class ProductsDB {
  final CollectionReference collection =
      FirebaseFirestore.instance.collection('products');

  Future<void> addProduct(Product product) async {
    await collection.doc(product.id).set(product.toFirestore());
  }

  Stream<List<Product>> getProducts() {
    return collection.snapshots().map((snapshot) {
      return snapshot.docs.map((doc) {
        // Explicitly cast the data to Map<String, dynamic>
        final data = doc.data() as Map<String, dynamic>;
        // Add the document ID to the data map
        data['id'] = doc.id;
        return Product.fromFirestore(data);
      }).toList();
    });
  }

  Future<void> updateProduct(Product product) async {
    await collection.doc(product.id).update(product.toFirestore());
  }

  Future<void> deleteProduct(String id) async {
    await collection.doc(id).delete();
  }
}
