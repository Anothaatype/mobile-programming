void main() {
  // Nama: Baskoro Seno Aji
  // NIM: 2341720063

  // Membuat final list dengan 5 elemen, default value null
  final List<String?> list = List.filled(5, null);

  // Mengisi nama dan NIM pada index 1 dan 2
  list[1] = "Baskoro Seno Aji";
  list[2] = "2341720063";

  // Print dan capture hasil
  print("Final List Contents:");
  print("Index 0: ${list[0]}");
  print("Index 1: ${list[1]}");
  print("Index 2: ${list[2]}");
  print("Index 3: ${list[3]}");
  print("Index 4: ${list[4]}");

  print("\nList length: ${list.length}");
  print("Full list: $list");
}
