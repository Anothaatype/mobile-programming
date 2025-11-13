import 'dart:async';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:async/async.dart';
import 'navigation_dialog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Baskoro Seno Aji',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const NavigationDialogScreen(),
    );
  }
}

class FuturePage extends StatefulWidget {
  const FuturePage({super.key});

  @override
  State<FuturePage> createState() => _FuturePageState();
}

class _FuturePageState extends State<FuturePage> {
  String result = '';
  bool loading = false;
  Future<http.Response> getData() async {
    const authority = 'www.googleapis.com';
    const path = '/books/v1/volumes/AQi9EAAAQBAJ';
    Uri url = Uri.https(authority, path);
    return http.get(url);
  }

  Future<int> returnOneAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 1;
  }

  Future<int> returnTwoAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 2;
  }

  Future<int> returnThreeAsync() async {
    await Future.delayed(const Duration(seconds: 3));
    return 3;
  }

  Future<void> count() async {
    int total = 0;
    total = await returnOneAsync();
    total += await returnTwoAsync();
    total += await returnThreeAsync();
    setState(() {
      result = total.toString();
    });
  }

  // Completer and helper moved to class scope so getNumber() can be called from elsewhere
  late Completer<int> completer;

  Future<void> calculate() async {
    try {
      await Future.delayed(const Duration(seconds: 5));
      completer.complete(42);
      // throw Exception(); // uncomment to test error path
    } catch (_) {
      // forward the error to the completer
      completer.completeError({});
    }
  }

  Future<int> getNumber() {
    completer = Completer<int>();
    calculate();
    return completer.future;
  }

  // Use FutureGroup to run multiple futures and collect their results
  void returnFG() {
    final FutureGroup<int> futureGroup = FutureGroup<int>();
    futureGroup.add(returnOneAsync());
    futureGroup.add(returnTwoAsync());
    futureGroup.add(returnThreeAsync());
    futureGroup.close();

    futureGroup.future
        .then((List<int> value) {
          int total = 0;
          for (var element in value) {
            total += element;
          }
          setState(() {
            result = total.toString();
          });
        })
        .catchError((e) {
          setState(() {
            result = 'An error occurred';
          });
        });
  }

  // A future that always throws after a short delay (used to demonstrate error handling)
  Future<void> returnError() async {
    await Future.delayed(const Duration(seconds: 2));
    throw Exception('Something terrible happened!');
  }

  // Helper that awaits returnError(), catches the thrown error and updates UI, and always prints when complete
  Future<void> handleError() async {
    try {
      await returnError();
    } catch (error) {
      setState(() {
        result = error.toString();
      });
    } finally {
      print('Complete');
    }
  }

  // _fetchSomething was removed — `getData()` is used directly by the button.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Baskoro Seno Aji')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Previous (commented) button using getData():
            // ElevatedButton(
            //   child: const Text('GO!'),
            //   onPressed: loading
            //       ? null
            //       : () {
            //           setState(() {
            //             loading = true;
            //             result = '';
            //           });
            //
            //           getData()
            //               .then((value) {
            //                 setState(() {
            //                   // Trim response body to 450 chars (guard against shorter bodies)
            //                   result = value.body.toString().substring(
            //                     0,
            //                     value.body.length >= 450
            //                         ? 450
            //                         : value.body.length,
            //                   );
            //                   loading = false;
            //                 });
            //               })
            //               .catchError((_) {
            //                 setState(() {
            //                   result = 'An error occurred';
            //                   loading = false;
            //                 });
            //               });
            //         },
            // ),

            // New simplified button that calls count():
            // Previous onPressed implementation (kept commented for reference):
            // ElevatedButton(
            //   child: const Text('GO!'),
            //   onPressed: () {
            //     // previous implementation:
            //     // count();
            //
            //     // call count and then getNumber to update result when available
            //     count();
            //     getNumber()
            //         .then((value) {
            //           setState(() {
            //             result = value.toString();
            //           });
            //         })
            //         .catchError((e) {
            //           result = 'An error occurred';
            //         });
            //   },
            // ),

            // Previous button implementations (kept commented for reference):
            // ElevatedButton(
            //   child: const Text('GO!'),
            //   onPressed: () {
            //     returnFG();
            //   },
            // ),

            // New button: call returnError() and demonstrate then/catchError/whenComplete
            ElevatedButton(
              child: const Text('GO!'),
              onPressed: () {
                returnError()
                    .then((value) {
                      setState(() {
                        result = 'Success';
                      });
                    })
                    .catchError((onError) {
                      setState(() {
                        result = onError.toString();
                      });
                    })
                    .whenComplete(() {
                      // runs regardless of success or error
                      print('Complete');
                    });
              },
            ),
            const SizedBox(height: 16),
            if (loading) const CircularProgressIndicator(),
            if (!loading) Text(result),
          ],
        ),
      ),
    );
  }
}
