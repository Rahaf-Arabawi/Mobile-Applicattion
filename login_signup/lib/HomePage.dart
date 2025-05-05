// import 'package:flutter/material.dart';
// import 'package:login_signup/ProductPage.dart';
// import 'package:login_signup/DiscountPage.dart';
// import 'package:login_signup/ShoppingCartPage.dart'; 

// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _selectedIndex = 0;
//   String appBarTitle = "Home";

 
//   List<Map<String, dynamic>> cartItems = [];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//       if (index == 0) {
//         appBarTitle = "Home";
//       } else if (index == 1) {
//         appBarTitle = "Products";
//       } else {
//         appBarTitle = "Profile";
//       }
//     });
//   }

//   final List<Widget> _pages = [
//     SizedBox(), // Home will have custom UI
//     ProductPage(title: ''),
//     Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
//   ];

//   // Example products with descriptions
//   final List<Map<String, dynamic>> products = [
//     {
//       'name': 'Product 1',
//       'price': 29.99,
//       'image': 'images/img1.jpg',
//       'description': 'This is a description of Product 1. It is very useful and high quality.'
//     },
//     {
//       'name': 'Product 2',
//       'price': 49.99,
//       'image': 'images/img2.jpg',
//       'description': 'This is a description of Product 2. It is durable and affordable.'
//     },
//     {
//       'name': 'Product 3',
//       'price': 19.99,
//       'image': 'images/img3.jpg',
//       'description': 'This is a description of Product 3. It is compact and easy to use.'
//     },
//     {
//       'name': 'Product 4',
//       'price': 99.99,
//       'image': 'images/img4.jpg',
//       'description': 'This is a description of Product 4. It is premium quality and very stylish.'
//     },
//     // New products
//     {
//       'name': 'Product 5',
//       'price': 59.99,
//       'image': 'images/img5.jpg',
//       'description': 'This is a description of Product 5. It is versatile and designed for everyday use.'
//     },
//     {
//       'name': 'Product 6',
//       'price': 79.99,
//       'image': 'images/img6.jpg',
//       'description': 'This is a description of Product 6. It offers exceptional performance and quality.'
//     },
//     {
//       'name': 'Product 7',
//       'price': 39.99,
//       'image': 'images/img7.jpg',
//       'description': 'This is a description of Product 7. It is a budget-friendly option with great features.'
//     },
//     {
//       'name': 'Product 8',
//       'price': 89.99,
//       'image': 'images/img8.jpg',
//       'description': 'This is a description of Product 8. It is a high-end product built for durability.'
//     },
//     {
//       'name': 'Product 9',
//       'price': 109.99,
//       'image': 'images/img9.jpg',
//       'description': 'This is a description of Product 9. It provides a premium experience and sleek design.'
//     },
//     {
//       'name': 'Product 10',
//       'price': 159.99,
//       'image': 'images/img10.jpg',
//       'description': 'This is a description of Product 10. It is perfect for professional use with advanced features.'
//     },
//   ];

//   void _addToCart(Map<String, dynamic> product) {
//     setState(() {
//       bool productExists = false;
//       for (var item in cartItems) {
//         if (item['name'] == product['name']) {
//           item['quantity']++;  
//           productExists = true;
//           break;
//         }
//       }

//       if (!productExists) {
//         cartItems.add({
//           ...product, 
//           'quantity': 1,  
//         });
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(appBarTitle),
//         backgroundColor: Colors.teal,
//         actions: [
//           IconButton(
//             icon: Icon(Icons.shopping_cart),
//             onPressed: () {
             
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ShoppingCartPage(cartItems: cartItems),
//                 ),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           // Search Bar
//           Padding(
//             padding: const EdgeInsets.all(16.0),
//             child: TextField(
//               decoration: InputDecoration(
//                 labelText: 'Search for products...',
//                 border: OutlineInputBorder(),
//                 prefixIcon: Icon(Icons.search),
//               ),
//             ),
//           ),

//           if (_selectedIndex == 0) ...[
//             // Discount Card
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 16.0),
//               child: Card(
//                 elevation: 5,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(10),
//                 ),
//                 child: Stack(
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(10),
//                       child: Image.asset(
//                         'images/img1.jpg',
//                         fit: BoxFit.cover,
//                         height: 200,
//                         width: double.infinity,
//                         color: Colors.black.withOpacity(0.4),
//                         colorBlendMode: BlendMode.darken,
//                       ),
//                     ),
//                     Positioned(
//                       bottom: 20,
//                       left: 0,
//                       right: 0,
//                       child: Center(
//                         child: Column(
//                           children: [
//                             Text(
//                               'Special Discount - Up to 50% Off!',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.bold,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             SizedBox(height: 8),
//                             Text(
//                               'Hurry, limited time offer.',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 color: Colors.black,
//                               ),
//                             ),
//                             SizedBox(height: 16),
//                             ElevatedButton(
//                               onPressed: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) => DiscountPage()),
//                                 );
//                               },
//                               child: Text('Shop Now'),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             // Products Grid
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
//                 child: GridView.builder(
//                   itemCount: products.length,
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     mainAxisSpacing: 12,
//                     crossAxisSpacing: 12,
//                     childAspectRatio: 0.75,
//                   ),
//                   itemBuilder: (context, index) {
//                     final product = products[index];
//                     String image = product['image'] ?? ''; 
//                     String description = product['description'] ?? 'No description available';

//                     return Card(
//                       elevation: 4,
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(10),
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: [
//                           Expanded(
//                             child: ClipRRect(
//                               borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
//                               child: image.isNotEmpty
//                                   ? Image.asset(image, fit: BoxFit.cover)
//                                   : Container(color: Colors.grey),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: Text(
//                               product['name'] ?? 'Unknown Product',
//                               style: TextStyle(fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                             child: Text("\$${product['price']}"),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
//                             child: Text(
//                               description,
//                               style: TextStyle(fontSize: 12, color: Colors.grey),
//                               maxLines: 2,
//                               overflow: TextOverflow.ellipsis,
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: ElevatedButton(
//                               onPressed: () {
//                                 _addToCart(product); 
//                               },
//                               child: Text('Add to Cart'),
//                             ),
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//           ] else
//             Expanded(
//               child: _pages[_selectedIndex],
//             ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _selectedIndex,
//         onTap: _onItemTapped,
//         items: const <BottomNavigationBarItem>[
//           BottomNavigationBarItem(
//             icon: Icon(Icons.home),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_bag),
//             label: 'Products',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.person),
//             label: 'Profile',
//           ),
//         ],
//       ),
//     );
//   }
// }
















import 'package:flutter/material.dart';
import 'package:login_signup/ProductPage.dart';
import 'package:login_signup/DiscountPage.dart';
import 'package:login_signup/ShoppingCartPage.dart'; 

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  String appBarTitle = "Home";

  // Add a search controller to handle text input
  final TextEditingController _searchController = TextEditingController();

  List<Map<String, dynamic>> cartItems = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        appBarTitle = "Home";
      } else if (index == 1) {
        appBarTitle = "Products";
      } else {
        appBarTitle = "Profile";
      }
    });
  }

  final List<Widget> _pages = [
    SizedBox(), // Home will have custom UI
    ProductPage(title: ''),
    Center(child: Text('Profile Page', style: TextStyle(fontSize: 24))),
  ];

  // Example products with descriptions
  final List<Map<String, dynamic>> products = [
    {
      'name': 'Product 1',
      'price': 29.99,
      'image': 'images/img1.jpg',
      'description': 'This is a description of Product 1. It is very useful and high quality.'
    },
    {
      'name': 'Product 2',
      'price': 49.99,
      'image': 'images/img2.jpg',
      'description': 'This is a description of Product 2. It is durable and affordable.'
    },
    {
      'name': 'Product 3',
      'price': 19.99,
      'image': 'images/img3.jpg',
      'description': 'This is a description of Product 3. It is compact and easy to use.'
    },
    {
      'name': 'Product 4',
      'price': 99.99,
      'image': 'images/img4.jpg',
      'description': 'This is a description of Product 4. It is premium quality and very stylish.'
    },
    {
      'name': 'Product 5',
      'price': 59.99,
      'image': 'images/img5.jpg',
      'description': 'This is a description of Product 5. It is versatile and designed for everyday use.'
    },
    {
      'name': 'Product 6',
      'price': 79.99,
      'image': 'images/img6.jpg',
      'description': 'This is a description of Product 6. It offers exceptional performance and quality.'
    },
    {
      'name': 'Product 7',
      'price': 39.99,
      'image': 'images/img7.jpg',
      'description': 'This is a description of Product 7. It is a budget-friendly option with great features.'
    },
    {
      'name': 'Product 8',
      'price': 89.99,
      'image': 'images/img8.jpg',
      'description': 'This is a description of Product 8. It is a high-end product built for durability.'
    },
    {
      'name': 'Product 9',
      'price': 109.99,
      'image': 'images/img9.jpg',
      'description': 'This is a description of Product 9. It provides a premium experience and sleek design.'
    },
    {
      'name': 'Product 10',
      'price': 159.99,
      'image': 'images/img10.jpg',
      'description': 'This is a description of Product 10. It is perfect for professional use with advanced features.'
    },
  ];

  void _addToCart(Map<String, dynamic> product) {
    setState(() {
      bool productExists = false;
      for (var item in cartItems) {
        if (item['name'] == product['name']) {
          item['quantity']++;  
          productExists = true;
          break;
        }
      }

      if (!productExists) {
        cartItems.add({
          ...product, 
          'quantity': 1,  
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle),
        backgroundColor: Colors.teal,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ShoppingCartPage(cartItems: cartItems),
                ),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Show search bar only on Home and Products pages
          if (_selectedIndex == 0 || _selectedIndex == 1) ...[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: _searchController, // Connect the controller
                decoration: InputDecoration(
                  labelText: 'Search for products...',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
          ],

          // Display content based on selected index
          if (_selectedIndex == 0) ...[
            // Discount Card
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'images/img1.jpg',
                        fit: BoxFit.cover,
                        height: 200,
                        width: double.infinity,
                        color: Colors.black.withOpacity(0.4),
                        colorBlendMode: BlendMode.darken,
                      ),
                    ),
                    Positioned(
                      bottom: 20,
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Column(
                          children: [
                            Text(
                              'Special Discount - Up to 50% Off!',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              'Hurry, limited time offer.',
                              style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DiscountPage()),
                                );
                              },
                              child: Text('Shop Now'),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            // Products Grid
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
                child: GridView.builder(
                  itemCount: products.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12,
                    crossAxisSpacing: 12,
                    childAspectRatio: 0.75,
                  ),
                  itemBuilder: (context, index) {
                    final product = products[index];
                    String image = product['image'] ?? ''; 
                    String description = product['description'] ?? 'No description available';

                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                              child: image.isNotEmpty
                                  ? Image.asset(image, fit: BoxFit.cover)
                                  : Container(color: Colors.grey),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              product['name'] ?? 'Unknown Product',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text("\$${product['price']}"),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
                            child: Text(
                              description,
                              style: TextStyle(fontSize: 12, color: Colors.grey),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                              onPressed: () {
                                _addToCart(product); 
                              },
                              child: Text('Add to Cart'),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ] else
            Expanded(
              child: _pages[_selectedIndex],
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
