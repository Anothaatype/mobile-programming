import 'package:flutter/material.dart';

class NavigationFirst extends StatefulWidget {
  const NavigationFirst({super.key});

  @override
  State<NavigationFirst> createState() => _NavigationFirstState();
}

class _NavigationFirstState extends State<NavigationFirst> {
  Color color = Colors.blue.shade700;

  Future<void> _navigateAndGetColor(BuildContext context) async {
    // Example: push a simple route that returns a color.
    // Replace with your actual destination widget as needed.
    final returned = await Navigator.of(context).push<Color>(
      MaterialPageRoute(
        builder: (_) => Scaffold(
          appBar: AppBar(title: const Text('Pick a color')),
          body: Center(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  onPressed: () => Navigator.of(context).pop(Colors.red),
                  child: const Text('Red'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                  ),
                  onPressed: () => Navigator.of(context).pop(Colors.green),
                  child: const Text('Green'),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    if (returned != null) {
      setState(() => color = returned);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Baskoro Seno Aji')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () => _navigateAndGetColor(context),
        ),
      ),
    );
  }
}
