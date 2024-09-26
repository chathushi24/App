import 'package:flutter/material.dart';


class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  static const String id = "homepage";

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int _currentIndex = 0;

  //Create a list of widgets for each tab
  final List<Widget> _pages = [
    const Center(child: Text('Home Page')),
    const Center(child: Text('Shop Page')),
    const Center(child: Text('Cart Page')),
    const Center(child: Text('Profile Page')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ELEGANT ESSENCE"),
      ),
      body: _pages[_currentIndex], // Display the selected page
       bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
           _currentIndex = index;
         });
        },
        type: BottomNavigationBarType.fixed, // Add this line
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
           BottomNavigationBarItem(
             icon: Icon(Icons.shop),
             label: 'Shop',
           ),
           BottomNavigationBarItem(
             icon: Icon(Icons.shopping_cart),
             label: 'Cart',
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