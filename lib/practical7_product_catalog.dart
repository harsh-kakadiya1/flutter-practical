import 'package:flutter/material.dart';

/// Practical 7: Product Catalog App

/// Data model for Product
class Product {
  final int id;
  final String name;
  final double price;
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
}

/// Sample product data
const List<Product> _products = <Product>[
  Product(
    id: 1,
    name: 'Wireless Headphones',
    price: 19.99,
    imageUrl:
        'https://images.unsplash.com/photo-1505740420928-5e560c06d30e?w=400&h=300&fit=crop',
  ),
  Product(
    id: 2,
    name: 'Smart Watch',
    price: 29.99,
    imageUrl:
        'https://images.unsplash.com/photo-1523275335684-37898b6baf30?w=400&h=300&fit=crop',
  ),
  Product(
    id: 3,
    name: 'Laptop Stand',
    price: 39.99,
    imageUrl:
        'https://images.unsplash.com/photo-1527864550417-7f91c4da4f4c?w=400&h=300&fit=crop',
  ),
  Product(
    id: 4,
    name: 'Mechanical Keyboard',
    price: 49.99,
    imageUrl:
        'https://images.unsplash.com/photo-1541140532154-b024d705b90a?w=400&h=300&fit=crop',
  ),
  Product(
    id: 5,
    name: 'Gaming Mouse',
    price: 59.99,
    imageUrl:
        'https://images.unsplash.com/photo-1527864550417-7f91c4da4f4c?w=400&h=300&fit=crop',
  ),
  Product(
    id: 6,
    name: 'Bluetooth Speaker',
    price: 69.99,
    imageUrl:
        'https://images.unsplash.com/photo-1608043152269-423dbba4e7e1?w=400&h=300&fit=crop',
  ),
  Product(
    id: 7,
    name: 'Phone Case',
    price: 79.99,
    imageUrl:
        'https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?w=400&h=300&fit=crop',
  ),
  Product(
    id: 8,
    name: 'Tablet Stand',
    price: 89.99,
    imageUrl:
        'https://images.unsplash.com/photo-1561154464-82e9adf32764?w=400&h=300&fit=crop',
  ),
];

class Practical7ProductCatalogApp extends StatelessWidget {
  const Practical7ProductCatalogApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practical 7: Product Catalog',
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
            fontSize: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          childAspectRatio: 0.75,
        ),
        itemCount: _products.length,
        itemBuilder: (BuildContext context, int index) {
          return _ProductCard(product: _products[index]);
        },
      ),
    );
  }
}

/// Individual product card widget
class _ProductCard extends StatelessWidget {
  final Product product;
  const _ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12.0),
              ),
              child: Image.network(
                product.imageUrl,
                fit: BoxFit.cover,
                loadingBuilder: (context, child, loadingProgress) {
                  if (loadingProgress == null) return child;
                  return Container(
                    color: Colors.grey.shade200,
                    child: Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded /
                                  loadingProgress.expectedTotalBytes!
                            : null,
                        strokeWidth: 2.0,
                      ),
                    ),
                  );
                },
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    color: Colors.grey.shade200,
                    child: const Center(
                      child: Icon(
                        Icons.image_not_supported,
                        color: Colors.grey,
                        size: 40,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  product.name,
                  style: Theme.of(
                    context,
                  ).textTheme.titleSmall?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4.0),
                Text(
                  '\$${product.price}',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
