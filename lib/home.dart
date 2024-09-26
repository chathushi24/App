import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  final Function toggleTheme;

  const Homepage({Key? key, required this.toggleTheme}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Welcome to Elegant Essence',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => toggleTheme(),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.primary),
              foregroundColor: MaterialStateProperty.all(Theme.of(context).colorScheme.onPrimary),
            ),
            child: const Text('Toggle Theme'),
          ),
          const SizedBox(height: 20),
          Text(
            'Current theme: ${Theme.of(context).brightness == Brightness.dark ? 'Dark' : 'Light'}',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}