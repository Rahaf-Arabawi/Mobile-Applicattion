import 'package:flutter/material.dart';

class DiscountPage extends StatelessWidget {
  final List<Map<String, dynamic>> discountedProducts = [
    {
      'name': 'Wireless ',
      'description': 'High quality sound with noise canceling.',
      'price': 49.99,
      'originalPrice': 99.99,
      'image': 'images/product1.jpg'
    },
    {
      'name': 'Smart Watch',
      'description': 'Track fitness, messages, and more.',
      'price': 79.99,
      'originalPrice': 159.99,
      'image': 'images/product2.jpg'
    },
    {
      'name': 'Gaming Mouse',
      'description': 'Ergonomic design for pro gamers.',
      'price': 29.99,
      'originalPrice': 59.99,
      'image': 'images/product3.jpg'
    },
    {
      'name': 'Bluetooth Speaker',
      'description': 'Portable and powerful bass.',
      'price': 39.99,
      'originalPrice': 79.99,
      'image': 'images/product4.jpg'
    },
    {
      'name': 'Fitness Tracker',
      'description': 'Monitor your health and steps.',
      'price': 24.99,
      'originalPrice': 49.99,
      'image': 'images/product5.jpg'
    },
    {
      'name': 'LED Desk Lamp',
      'description': 'Eye-friendly light with touch control.',
      'price': 19.99,
      'originalPrice': 39.99,
      'image': 'images/product6.jpg'
    },
    {
      'name': 'Portable Charger',
      'description': '10000mAh fast charging power bank.',
      'price': 34.99,
      'originalPrice': 69.99,
      'image': 'images/product7.jpg'
    },
    {
      'name': 'Mini Projector',
      'description': 'Compact size, HD display for movies.',
      'price': 89.99,
      'originalPrice': 149.99,
      'image': 'images/product8.jpg'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Discounts'),
        backgroundColor: Colors.teal,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: discountedProducts.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 12,
            mainAxisSpacing: 12,
            childAspectRatio: 0.6,
          ),
          itemBuilder: (context, index) {
            final product = discountedProducts[index];
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: AssetImage(product['image']),
                    ),
                    SizedBox(height: 12),
                    Text(
                      product['name'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      product['description'],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '\$${product['price']}',
                          style: TextStyle(fontSize: 16, color: Colors.teal, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 6),
                        Text(
                          '\$${product['originalPrice']}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                            decoration: TextDecoration.lineThrough,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange,
                        minimumSize: Size(double.infinity, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('${product['name']} added to cart!')),
                        );
                      },
                      child: Text('Add to Cart'),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
