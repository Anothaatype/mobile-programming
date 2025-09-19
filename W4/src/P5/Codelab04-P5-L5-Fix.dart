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

  print("\n=== LANGKAH 5: Record dengan Named Fields ===");

  // Langkah 5 - Record dengan named fields
  var mahasiswa2 = ('first', a: 2, b: true, 'last');

  // Mengakses fields
  print("mahasiswa2.\$1: ${mahasiswa2.$1}"); // Prints 'first'
  print("mahasiswa2.a: ${mahasiswa2.a}"); // Prints 2
  print("mahasiswa2.b: ${mahasiswa2.b}"); // Prints true
  print("mahasiswa2.\$2: ${mahasiswa2.$2}"); // Prints 'last'

  // Mengganti salah satu record dengan data mahasiswa
  var mahasiswa3 = (
    'Baskoro Seno Aji',
    a: 2341720063,
    b: true,
    'Mahasiswa Aktif',
  );
  print("\nRecord mahasiswa dengan data pribadi:");
  print("Nama: ${mahasiswa3.$1}");
  print("NIM: ${mahasiswa3.a}");
  print("Status Aktif: ${mahasiswa3.b}");
  print("Keterangan: ${mahasiswa3.$2}");

  print("\n=== DEMONSTRASI TAMBAHAN ===");

  // Contoh penggunaan Records dalam berbagai skenario
  print("\n1. Record sebagai return value dari fungsi:");

  // Fungsi yang mengembalikan multiple values menggunakan record
  (String, int, double) getStudentInfo() {
    return ('Baskoro Seno Aji', 2341720063, 3.75);
  }

  var studentInfo = getStudentInfo();
  print("Student Info: $studentInfo");
  print("Nama: ${studentInfo.$1}");
  print("NIM: ${studentInfo.$2}");
  print("IPK: ${studentInfo.$3}");

  print("\n2. Destructuring record:");
  var (nama, nim, ipk) = getStudentInfo();
  print("Destructured - Nama: $nama, NIM: $nim, IPK: $ipk");

  print("\n3. Record dengan mixed types:");
  var mixedRecord = (
    'Baskoro Seno Aji', // String
    2341720063, // int
    true, // bool
    ['Dart', 'Flutter', 'Mobile'], // List<String>
    semester: 5, // named int field
    ipk: 3.75, // named double field
  );

  print("Mixed record: $mixedRecord");
  print("Nama: ${mixedRecord.$1}");
  print("NIM: ${mixedRecord.$2}");
  print("Status: ${mixedRecord.$3}");
  print("Skills: ${mixedRecord.$4}");
  print("Semester: ${mixedRecord.semester}");
  print("IPK: ${mixedRecord.ipk}");

  print("\n4. Comparison Records:");
  var record1 = ('Baskoro', 2341720063);
  var record2 = ('Baskoro', 2341720063);
  var record3 = ('Seno', 1234567890);

  print("record1 == record2: ${record1 == record2}"); // true
  print("record1 == record3: ${record1 == record3}"); // false
}
