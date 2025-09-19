void main() {
  // Nama: Baskoro Seno Aji
  // NIM: 2341720063

  // Langkah 1 - Kode asli
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print("Original halogens set:");
  print(halogens);

  print("\n" + "=" * 50);

  // Langkah 3 - Modifikasi dengan tiga variabel berbeda

  // 1. Set dengan tipe eksplisit (Set<String>)
  var names1 = <String>{};

  // 2. Set dengan konstruktor eksplisit
  Set<String> names2 = {}; // This works, too.

  // 3. Map (bukan Set seperti komentar yang salah)
  var names3 = {}; // Creates a map, not a set.

  print("Before adding elements:");
  print("names1 (Set<String>): $names1");
  print("names2 (Set<String>): $names2");
  print("names3 (Map): $names3");

  print("\nAdding elements using .add() for Sets:");

  // Menambahkan nama dan NIM ke Set menggunakan .add()
  names1.add("Baskoro Seno Aji");
  names1.add("2341720063");

  names2.add("Baskoro Seno Aji");
  names2.add("2341720063");

  print("names1 after .add(): $names1");
  print("names2 after .add(): $names2");

  print("\nAdding elements using .addAll() for Sets:");

  // Membersihkan set terlebih dahulu untuk demo .addAll()
  names1.clear();
  names2.clear();

  // Menambahkan menggunakan .addAll()
  names1.addAll(["Baskoro Seno Aji", "2341720063"]);
  names2.addAll(["Baskoro Seno Aji", "2341720063"]);

  print("names1 after .addAll(): $names1");
  print("names2 after .addAll(): $names2");

  print("\nWorking with Map (names3):");

  // Untuk Map, kita akan menambahkan key-value pairs
  names3["name"] = "Baskoro Seno Aji";
  names3["nim"] = "2341720063";

  print("names3 (Map) after adding key-value pairs: $names3");

  print("\n" + "=" * 50);
  print("SUMMARY:");
  print("names1 type: ${names1.runtimeType}");
  print("names2 type: ${names2.runtimeType}");
  print("names3 type: ${names3.runtimeType}");
}
