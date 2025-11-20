import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:io';
import 'dart:convert';
import 'package:path_provider/path_provider.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() => runApp(const MyTextIO());

class MyTextIO extends StatelessWidget {
  const MyTextIO({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'TextIO', home: MyTextIOHome());
  }
}

// ------------------------ MODEL ------------------------
class MyPizza {
  String pizzaName, price;

  MyPizza({required this.pizzaName, required this.price});

  MyPizza.fromJson(Map json)
    : pizzaName = json['pizzaName'],
      price = json['price'].toString();
}

List<MyPizza> myPizzas = [];

class MenuItem {
  int id;
  String title;
  int cnt;
  MenuItem(this.id, this.title, this.cnt);
}

// -------------------------------------------------------

class MyTextIOHome extends StatefulWidget {
  const MyTextIOHome({super.key});

  @override
  State<MyTextIOHome> createState() => _MyTextIOHomeState();
}

class _MyTextIOHomeState extends State<MyTextIOHome> {
  late String documentsPath;
  File? myFile;
  String fileText = "";
  bool fileReady = false;

  // Secure Storage
  final storage = const FlutterSecureStorage();
  final TextEditingController secureController = TextEditingController();
  String secureValue = "";
  final String secureKey = "mySecureText";

  // Manual counters
  List<MenuItem> menuItems = [
    MenuItem(1, 'Margherita With Tomatoes, Mozzarella & Basil', 0),
    MenuItem(2, 'Extra Mozarella, Mozarella & Tomatoes', 0),
    MenuItem(3, 'Tomatoes & Cheese', 0),
  ];

  @override
  void initState() {
    super.initState();
    initApp();
  }

  // INITIALIZE
  Future<void> initApp() async {
    await loadPaths();
    myPizzas = await readJsonMenu();
    myFile = File("$documentsPath/pizza_menu.txt");

    await writeFile();
    setState(() => fileReady = true);
  }

  Future<void> loadPaths() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    documentsPath = appDocDir.path;
  }

  // SAVE COUNTERS
  Future<void> saveCounter(int id, int cnt) async {
    File f = File("$documentsPath/counter$id.txt");
    await f.writeAsString("$cnt");
  }

  // READ JSON FROM ASSETS
  Future<List<MyPizza>> readJsonMenu() async {
    final String response = await rootBundle.loadString(
      'assets/pizzalist.json',
    );

    final jsonData = json.decode(response);

    // FIX: pizzalist.json is a LIST
    return (jsonData as List).map((e) => MyPizza.fromJson(e)).toList();
  }

  // WRITE FILE
  Future<void> writeFile() async {
    if (myFile == null) return;

    String counterText = menuItems
        .map((m) => "${m.title} = ${m.cnt}x")
        .join("\n");

    String pizzaList = myPizzas
        .map((p) => "${p.pizzaName} - Rp ${p.price}")
        .join("\n");

    String content =
        """
Baskoro Seno Aji
NIM: 2341720063

--- Menu List ---
$pizzaList

--- Order Counters ---
$counterText
""";

    await myFile!.writeAsString(content);
  }

  // READ FILE
  Future<void> readFile() async {
    if (myFile == null) return;

    fileText = await myFile!.readAsString();
    setState(() {});
  }

  // SECURE STORAGE WRITE
  Future<void> writeToSecureStorage() async {
    await storage.write(key: secureKey, value: secureController.text);
    setState(() {
      secureValue = secureController.text;
    });
  }

  // SECURE STORAGE READ
  Future<void> readFromSecureStorage() async {
    String? value = await storage.read(key: secureKey);
    setState(() {
      secureValue = value ?? "";
    });
  }

  // ------------------------ UI ------------------------
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Pizza Storage Demo")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // ----------------- MENU LIST -----------------
            Container(
              padding: const EdgeInsets.all(12),
              decoration: _box(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Menu List",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),

                  for (var item in menuItems)
                    Card(
                      child: ListTile(
                        title: Text(item.title),
                        subtitle: Text("Ordered: ${item.cnt}"),
                        trailing: IconButton(
                          icon: const Icon(Icons.add),
                          onPressed: () async {
                            item.cnt++;
                            await saveCounter(item.id, item.cnt);
                            await writeFile();
                            setState(() {});
                          },
                        ),
                      ),
                    ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // ----------------- FILE ACTIONS -----------------
            Container(
              padding: const EdgeInsets.all(12),
              decoration: _box(),
              child: Column(
                children: [
                  const Text(
                    "Text File Actions",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          await writeFile();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("File Written Successfully"),
                            ),
                          );
                        },
                        child: const Text("Write File"),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          await readFile();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("File Read Successfully"),
                            ),
                          );
                        },
                        child: const Text("Read File"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),
                  Text(fileText, style: const TextStyle(fontSize: 14)),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ----------------- SECURE STORAGE -----------------
            Container(
              padding: const EdgeInsets.all(12),
              decoration: _box(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Secure Storage",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 15),

                  TextField(
                    controller: secureController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Enter secure text",
                    ),
                  ),

                  const SizedBox(height: 15),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () async {
                          await writeToSecureStorage();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Secure Text Saved Successfully"),
                            ),
                          );
                        },
                        child: const Text("Save Secure"),
                      ),
                      ElevatedButton(
                        onPressed: () async {
                          await readFromSecureStorage();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Secure Text Loaded Successfully"),
                            ),
                          );
                        },
                        child: const Text("Read Secure"),
                      ),
                    ],
                  ),

                  const SizedBox(height: 10),
                  Text(
                    "Secure Value: $secureValue",
                    style: const TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // UI DECORATION
  BoxDecoration _box() {
    return BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: const [BoxShadow(blurRadius: 8, color: Colors.black26)],
    );
  }
}
