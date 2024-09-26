import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static final String id = "HomePage";
  final Function toggleTheme;

  const HomePage({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Displaying an image from assets
            const Image(
              image: AssetImage("images/freestocks-_3Q3tsJ01nc-unsplash.jpg"),
            ),
            // Featured Products heading
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "Featured Products",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Subtitle for the collection
            const Text(
              "Summer Collection 2024 With New Designs",
              style: TextStyle(
                fontSize: 15,
              ),
            ),
            // Displaying product items using ItemCard widget
            ItemCard(
              name: "Brown California Top",
              title: "2990.00",
              image: "images/fp1.jpg",
            ),
            ItemCard(
              name: "Luxe Stella Dress",
              title: "5990.00",
              image: "images/fp2.jpg",
            ),
            ItemCard(
              name: "White Soft Cami Top",
              title: "2990.00",
              image: "images/fp3.jpg",
            ),
            ItemCard(
              name: "Flower Printed Maxi Dress",
              title: "5990.00",
              image: "images/fp4.jpg",
            ),
          ],
        ),
      ),
    );
  }
}

// Custom Widget for ItemCard
class ItemCard extends StatelessWidget {
  final String name;
  final String title;
  final String image;

  const ItemCard({
    Key? key,
    required this.name,
    required this.title,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            // Product image
            Container(
              height: 200,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // Product details
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    "Price: $title",
                    style: const TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
