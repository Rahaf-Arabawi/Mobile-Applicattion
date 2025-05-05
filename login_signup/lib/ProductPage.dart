import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;

  const ProductPage({super.key, required this.title});

  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Panadol Extra',
      'price': 5.50,
      'image': 'assets/images/panadol.png',
      'description': 'Pain reliever for headaches and body aches.',
    },
    {
      'name': 'Vitamin C',
      'price': 12.00,
      'image': 'assets/images/vitamin_c.png',
      'description': 'Boosts immune system and prevents colds.',
    },
    {
      'name': 'Hand Sanitizer',
      'price': 3.75,
      'image': 'assets/images/sanitizer.png',
      'description': 'Kills 99.9% of germs and bacteria.',
    },
    {
      'name': 'Cough Syrup',
      'price': 9.20,
      'image': 'assets/images/cough_syrup.png',
      'description': 'Relieves cough and sore throat symptoms.',
    },
    {
      'name': 'Face Mask (50 pcs)',
      'price': 7.99,
      'image': 'assets/images/mask.png',
      'description': 'Disposable protective face masks.',
    },
    {
      'name': 'Thermometer',
      'price': 15.49,
      'image': 'assets/images/thermometer.png',
      'description': 'Digital thermometer for measuring body temperature.',
    },
    {
      'name': 'Bandages',
      'price': 4.30,
      'image': 'assets/images/bandages.png',
      'description': 'Adhesive bandages for minor cuts and wounds.',
    },
    {
      'name': 'Antibiotic Cream',
      'price': 6.90,
      'image': 'assets/images/antibiotic_cream.png',
      'description': 'Topical cream for minor skin infections.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(title),
      //   backgroundColor: const Color(0xFF008374),
      // ),
      body: SafeArea(  
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: GridView.builder(
            itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              childAspectRatio: 0.70,
            ),
            itemBuilder: (context, index) {
              final product = products[index];
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 12),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        height: 80,
                        width: 80,
                        color: Colors.grey.shade100,
                        child: Image.asset(
                          product['image'],
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      product['name'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF333333),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 6),
                    Text(
                      '\$${product['price'].toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Color(0xFF008374),
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8.0, vertical: 6),
                      child: Text(
                        product['description'],
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const Spacer(),
                    ElevatedButton.icon(
                      onPressed: () {
                        // Add to cart logic
                      },
                      icon: const Icon(Icons.shopping_cart_outlined, size: 18),
                      label: const Text('Add'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF008374),
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 8),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
