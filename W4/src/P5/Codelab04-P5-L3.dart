void main() {
  // Nama: Baskoro Seno Aji
  // NIM: 2341720063

  print("=== LANGKAH 1 & 2: Kode Asli Records ===");

  // Langkah 1 - Membuat record
  var record = ('first', a: 2, b: true, 'last');
  print("record: $record");

  print("\n=== LANGKAH 3: Fungsi tukar() ===");
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }
  // Test fungsi tukar
  var originalRecord = (5, 10);
  var swappedRecord = tukar(originalRecord);
  print("Original record: $originalRecord");
  print("Swapped record: $swappedRecord");
}
