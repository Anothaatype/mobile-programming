import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';
import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stream Baskoro Seno Aji - 2341720063',
      theme: ThemeData(primarySwatch: Colors.amber),
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
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;

  int lastNumber = 0;
  late StreamController<int> numberStreamController;
  late NumberStream numberStream;

  // ---------------------------
  // STEP 1 — New variables
  // ---------------------------
  late StreamSubscription subscription;
  late StreamSubscription subscription2;
  String values = '';

  @override
  void initState() {
    super.initState();

    // Colors
    colorStream = ColorStream();
    changeColor();

    // Numbers
    numberStream = NumberStream();
    numberStreamController = numberStream.controller;

    // ---------------------------
    // STEP 4 — Convert to broadcast stream
    // ---------------------------
    Stream<int> stream = numberStreamController.stream.asBroadcastStream();

    // ---------------------------
    // STEP 2 — First subscription
    // ---------------------------
    subscription = stream.listen(
      (event) {
        setState(() {
          values += '$event - ';
          lastNumber = event;
        });
      },
      onError: (error) {
        setState(() {
          lastNumber = -1;
        });
      },
    );

    // ---------------------------
    // STEP 2 — Second subscription
    // ---------------------------
    subscription2 = stream.listen((event) {
      setState(() {
        values += '$event - ';
      });
    });
  }

  // Add random number
  void addRandomNumber() {
    final random = Random();
    int newNumber = random.nextInt(100);

    if (!numberStreamController.isClosed) {
      numberStream.addNumber(newNumber);
    } else {
      setState(() {
        lastNumber = -1;
      });
    }
  }

  // Change background color
  void changeColor() {
    colorStream.getColors().listen(
      (event) {
        setState(() {
          bgColor = event;
        });
      },
      onError: (error) {
        setState(() {
          lastNumber = -1;
        });
      },
    );
  }

  @override
  void dispose() {
    subscription.cancel();
    subscription2.cancel();

    if (!numberStreamController.isClosed) {
      numberStreamController.close();
    }

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stream - Baskoro Seno Aji')),
      body: Container(
        width: double.infinity,
        color: bgColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              lastNumber.toString(),
              style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
            ),

            // ---------------------------
            // STEP 5 — Display values string
            // ---------------------------
            Text(values),

            ElevatedButton(
              onPressed: addRandomNumber,
              child: const Text('New Random Number'),
            ),
          ],
        ),
      ),
    );
  }
}
