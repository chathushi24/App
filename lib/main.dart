import 'package:flutter/material.dart';
import 'package:elegant_essence/signup.dart';
import 'package:elegant_essence/login.dart';
import 'package:elegant_essence/home.dart';
import 'package:elegant_essence/shop.dart';
import 'package:elegant_essence/product.dart';
import 'package:elegant_essence/profile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  bool isDarkMode = false;

  void toggleTheme() {
    setState(() {
      isDarkMode = !isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(toggleTheme: toggleTheme),
        SignUp.id: (context) => SignUp(),
        Login.id: (context) => const Login(),
        ShopPage.id: (context) => ShopPage(),
        ProductPage.id: (context) => ProductPage(),
        ProfilePage.id: (context) => ProfilePage(),
      },
      theme: isDarkMode ? darkTheme : lightTheme,
    );
  }
}

final ThemeData lightTheme = ThemeData(
  primaryColor: const Color(0xffaf7373),
  scaffoldBackgroundColor: Colors.white,
  brightness: Brightness.light,
  // Add more light theme properties here
);

final ThemeData darkTheme = ThemeData(
  primaryColor: const Color(0xff6e4747),
  scaffoldBackgroundColor: Colors.grey[900],
  brightness: Brightness.dark,
  // Add more dark theme properties here
);

class MainScreen extends StatefulWidget {
  final Function toggleTheme;

  const MainScreen({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  State<MainScreen> createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  late final List<Widget> screens;

  @override
  void initState() {
    super.initState();
    screens = [
      HomePage(toggleTheme: widget.toggleTheme),
      const ShopPage(),
      const ProductPage(),
      const ProfilePage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ELEGANT ESSENCE"),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () => widget.toggleTheme(),
          ),
        ],
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
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
            icon: Icon(Icons.shopping_bag),
            label: 'Product',
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
