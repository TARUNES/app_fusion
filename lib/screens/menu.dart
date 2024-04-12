import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff9CDCCB),
        title: Text('Menu'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Electronics'),
            onTap: () {
              // Navigate to electronics category screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        CategoryScreen(category: 'Electronics')),
              );
            },
          ),
          ListTile(
            title: Text('Clothing'),
            onTap: () {
              // Navigate to clothing category screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoryScreen(category: 'Clothing')),
              );
            },
          ),
          ListTile(
            title: Text('Home & Furniture'),
            onTap: () {
              // Navigate to home & furniture category screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        CategoryScreen(category: 'Home & Furniture')),
              );
            },
          ),
          // Add more ListTile widgets for other categories
        ],
      ),
    );
  }
}

class CategoryScreen extends StatelessWidget {
  final String category;

  const CategoryScreen({required this.category, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Example list of products within the category (replace with actual data)
    List<String> products = [
      'Product 1',
      'Product 2',
      'Product 3',
      'Product 4',
      'Product 5',
      'Product 6',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          childAspectRatio: 0.75,
        ),
        itemCount: products.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigate to product details screen
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProductDetailsScreen(product: products[index])),
              );
            },
            child: Card(
              elevation: 5.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/product_placeholder.png'), // Placeholder image
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      products[index],
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final String product;

  const ProductDetailsScreen({required this.product, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(product),
      ),
      body: Center(
        child: Text('Product Details for $product'),
      ),
    );
  }
}
