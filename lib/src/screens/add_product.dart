import 'package:flutter/material.dart';
import '../models/product_model.dart';
import '../services/database/products_db.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class AddProductScreen extends StatelessWidget {
  final ProductsDB db = ProductsDB();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.productTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Product Name'),
            ),
            TextField(
              controller: priceController,
              decoration: InputDecoration(labelText: 'Price'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: () async {
                final String name = nameController.text;
                final double price = double.parse(priceController.text);
                final String id = DateTime.now()
                    .millisecondsSinceEpoch
                    .toString(); // Simple ID generation

                Product newProduct = Product(id: id, name: name, price: price);
                await db.addProduct(newProduct);
                Navigator.pop(context); // Optionally pop back after adding
              },
              child: Text('Add Product'),
            ),
          ],
        ),
      ),
    );
  }
}
