import 'package:flutter/material.dart';
import 'package:flutter_product_card/flutter_product_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Products",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: ListView(
        children: [
          ProductCard(
            imageUrl:
                'https://images.pexels.com/photos/322207/pexels-photo-322207.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
            categoryName: 'Pants',
            productName: "Men's Semi-Formal Set",
            price: 199.99,
            currency: 'RS.', // Default is '$'
            onTap: () {
              // Handle card tap event
            },
            onFavoritePressed: () {},
            shortDescription:
                'comfortable & airy.', // Optional short description
            rating: 4.1, // Optional rating

            isAvailable: true, // Optional availability status
            cardColor: Colors.white, // Optional card background color
            textColor: Colors.black, // Optional text color
            borderRadius: 8.0, // Optional border radius
          ),
          const SizedBox(
            height: 10,
          ),
          const Divider(),
          const SizedBox(
            height: 10,
          ),
          ProductCard(
            imageUrl:
                'https://images.pexels.com/photos/887751/pexels-photo-887751.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750',
            categoryName: 'Tech',
            productName: "iPhone 6s",
            price: 199.99,
            currency: 'RS.', // Default is '$'
            onTap: () {
              // Handle card tap event
            },
            onFavoritePressed: () {},
            shortDescription:
                'New', // Optional short description
            rating: 4.1, // Optional rating

            isAvailable: false, // Optional availability status
            cardColor: Colors.white, // Optional card background color
            textColor: Colors.black, // Optional text color
            borderRadius: 8.0, // Optional border radius
          ),
        ],
      ),
    );
  }
}
