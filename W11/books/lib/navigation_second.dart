import 'package:flutter/material.dart';

class NavigationSecond extends StatefulWidget {
  const NavigationSecond({super.key});

  @override
  State<NavigationSecond> createState() => _NavigationSecondState();
}

class _NavigationSecondState extends State<NavigationSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Navigation Second Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red.shade700,
              ),
              child: const Text('Red'),
              onPressed: () {
                final color = Colors.red.shade700;
                Navigator.of(context).pop(color);
              },
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade700,
              ),
              child: const Text('Green'),
              onPressed: () {
                final color = Colors.green.shade700;
                Navigator.of(context).pop(color);
              },
            ),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue.shade700,
              ),
              child: const Text('Blue'),
              onPressed: () {
                final color = Colors.blue.shade700;
                Navigator.of(context).pop(color);
              },
            ),
          ],
        ),
      ),
    );
  }
}
