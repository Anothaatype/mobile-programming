import 'package:flutter/material.dart';

class NavigationDialogScreen extends StatefulWidget {
  const NavigationDialogScreen({super.key});

  @override
  State<NavigationDialogScreen> createState() => _NavigationDialogScreenState();
}

class _NavigationDialogScreenState extends State<NavigationDialogScreen> {
  Color color = Colors.blue.shade700;

  Future<void> _showColorDialog(BuildContext context) async {
    final Color? selected = await showDialog<Color>(
      context: context,
      barrierDismissible: false,
      builder: (_) => AlertDialog(
        title: const Text('Very important question'),
        content: const Text('Please choose a color'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(Colors.red.shade700),
            child: const Text('Red'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(Colors.green.shade700),
            child: const Text('Green'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(Colors.blue.shade700),
            child: const Text('Blue'),
          ),
        ],
      ),
    );

    if (selected != null) {
      setState(() => color = selected);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      appBar: AppBar(title: const Text('Navigation Dialog Screen')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Change Color'),
          onPressed: () => _showColorDialog(context),
        ),
      ),
    );
  }
}
