void main() {
  // Nama: Baskoro Seno Aji
  // NIM: 2341720063

  print("=== LANGKAH 1 & 2: Kode Asli Records ===");

  // Langkah 1 - Membuat record
  var record = ('first', a: 2, b: true, 'last');
  print("record: $record");

  print("\n=== LANGKAH 3: Fungsi tukar() ===");

  // Langkah 3 - Fungsi untuk menukar nilai dalam record
  (int, int) tukar((int, int) record) {
    var (a, b) = record;
    return (b, a);
  }

  // Test fungsi tukar
  var originalRecord = (5, 10);
  var swappedRecord = tukar(originalRecord);
  print("Original record: $originalRecord");
  print("Swapped record: $swappedRecord");

  print("\n=== LANGKAH 4: Record Type Annotation ===");

  // Langkah 4 - Record type annotation dalam deklarasi variabel
  (String, int) mahasiswa = ('Baskoro Seno Aji', 2341720063);
  print("mahasiswa: $mahasiswa");

  // Mengakses field berdasarkan posisi
  print("Nama: ${mahasiswa.$1}");
  print("NIM: ${mahasiswa.$2}");

  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.a); // Prints 2
  print(mahasiswa2.b); // Prints true
  print(mahasiswa2.$2); // Prints 'last'
}
