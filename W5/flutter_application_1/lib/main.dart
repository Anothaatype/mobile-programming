import 'package:flutter/material.dart';
// Import semua widget dari folder basic_widgets
import 'basic_widgets/scaffold_widget.dart';
import 'basic_widgets/dialog_widget.dart';
import 'basic_widgets/input_selection_widget.dart';
import 'basic_widgets/date_time_picker_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Praktikum Nomer 3 - Basic Widgets',
      theme: ThemeData(primarySwatch: Colors.blue),
      // Halaman utama dengan navigasi ke semua widget
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tugas Praktikum Nomer 3 - Menu Utama')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Pilih Widget untuk Ditampilkan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),

              // Button untuk Scaffold Widget (Langkah 3)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(250, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ScaffoldWidget(),
                    ),
                  );
                },
                child: const Text('1. Scaffold Widget'),
              ),
              const SizedBox(height: 15),

              // Button untuk Dialog Widget (Langkah 4)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(250, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DialogWidget(),
                    ),
                  );
                },
                child: const Text('2. Dialog Widget'),
              ),
              const SizedBox(height: 15),

              // Button untuk Input and Selection Widget (Langkah 5)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(250, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InputSelectionWidget(),
                    ),
                  );
                },
                child: const Text('3. Input & Selection Widget'),
              ),
              const SizedBox(height: 15),

              // Button untuk Date and Time Picker (Langkah 6)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(250, 50),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DateTimePickerWidget(),
                    ),
                  );
                },
                child: const Text('4. Date & Time Picker'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
