import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({super.key});
  static const String id = "ShopPage";

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Displaying an image from assets
            const Image(
              image: AssetImage("/images/shopbanner.jpg"),
              fit: BoxFit.cover, // Ensures the image covers its container
            ),
            // Featured Products heading
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "Shop for your own happiness!",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Displaying product items using ItemCard widget
            ItemCard(
              name: "Steam cami top",
              title: "1990.00",
              image: "images/fp5.jpg",
            ),
            ItemCard(
              name: "African toselled dress",
              title: "6990.00",
              image: "images/fp6.jpg",
            ),
            ItemCard(
              name: "Regular white crop top",
              title: "1990.00",
              image: "images/fp7.jpg",
            ),
            ItemCard(
              name: "Black highneck bodycon dress",
              title: "5990.00",
              image: "images/fp8.jpg",
            ),
            ItemCard(
              name: "White wide legs pants",
              title: "6990.00",
              image: "images/na1.jpg",
            ),
            ItemCard(
              name: "Ripped wide legs jeans",
              title: "6990.00",
              image: "images/na2.jpg",
            ),
            ItemCard(
              name: "Grey Denim",
              title: "7990.00",
              image: "images/na3.jpg",
            ),
            ItemCard(
              name: "Denim grey short",
              title: "4990.00",
              image: "images/na4.jpg",
            ),
            // Adding a banner with an image and text
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: BannerWidget(),
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
                    "Price: $title", // Added currency symbol for clarity
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

// Custom Widget for Banner
class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Background image
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: const DecorationImage(
                image: AssetImage("images/banner1.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay text
          const Positioned(
            child: Text(
              "Enjoy 20% discounts with us!",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    blurRadius: 10,
                    color: Colors.black,
                    offset: Offset(3, 3),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
