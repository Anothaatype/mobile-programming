import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

// --- KODE NUMBERSTREAM DARI PERMINTAAN SEBELUMNYA ---
class NumberStream {
  Stream<int> getNumbers() async* {
    yield* Stream.periodic(const Duration(seconds: 1), (int t) {
      // Membuat objek Random di dalam closure Stream.periodic
      // untuk menghasilkan angka acak setiap detik.
      Random random = Random();
      int myNum = random.nextInt(10); // Menghasilkan angka 0-9
      return myNum;
    });
  }
}
// --- AKHIR KODE NUMBERSTREAM ---

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  // Langkah 5: Tambah variabel
  late Stream<int> numberStream;

  // Langkah 6: Edit initState()
  @override
  void initState() {
    super.initState();
    // Menginisialisasi numberStream dengan memanggil getNumbers()
    numberStream = NumberStream().getNumbers();
  }

  // Langkah 7: Edit method _build()
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream')),
      // body sekarang menggunakan StreamBuilder
      body: Container(
        alignment: Alignment.center,
        child: StreamBuilder<int>(
          stream: numberStream,
          initialData: 0, // Nilai awal sebelum data pertama tiba
          builder: (context, snapshot) {
            // Jika terjadi error
            if (snapshot.hasError) {
              print('Error!');
              return const Text('Error saat menerima data!');
            }

            // Jika data sudah tersedia
            if (snapshot.hasData) {
              return Center(
                child: Text(
                  snapshot.data.toString(), // Menampilkan data (angka)
                  style: const TextStyle(fontSize: 96),
                ),
              );
            }
            // Jika tidak ada data dan tidak ada error (misalnya: Waiting)
            else {
              return const SizedBox.shrink();
              // Atau bisa diganti dengan: return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}
