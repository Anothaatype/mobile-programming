void main() {
  // Nama: Baskoro Seno Aji
  // NIM: 2341720063

  print("=== LANGKAH 1 & 2: Kode Asli ===");

  // Map pertama dengan mixed types
  var gifts = {
    // Key:        Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1,
  };

  // Map kedua dengan integer keys
  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2, // Note: value adalah integer, bukan string
  };

  print("gifts: $gifts");
  print("nobleGases: $nobleGases");

  print("\n=== LANGKAH 3: Modifikasi dengan Constructor ===");

  // Map dengan constructor eksplisit - String key, String value
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings'; // Diubah dari int ke String

  // Map dengan constructor eksplisit - int key, String value
  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon'; // Diubah dari int ke String

  print("gifts (after modification): $gifts");
  print("nobleGases (after modification): $nobleGases");

  print("\n=== Menambahkan Data Nama dan NIM ===");

  // Menambahkan nama dan NIM ke semua Map
  gifts['name'] = 'Baskoro Seno Aji';
  gifts['nim'] = '2341720063';

  nobleGases[99] = 'Baskoro Seno Aji'; // Menggunakan key integer untuk nama
  nobleGases[100] = '2341720063'; // Menggunakan key integer untuk NIM

  mhs1['name'] = 'Baskoro Seno Aji';
  mhs1['nim'] = '2341720063';

  mhs2[1] = 'Baskoro Seno Aji';
  mhs2[2] = '2341720063';

  print("\n=== HASIL AKHIR ===");
  print("gifts: $gifts");
  print("nobleGases: $nobleGases");
  print("mhs1: $mhs1");
  print("mhs2: $mhs2");

  print("\n=== INFORMASI TIPE DATA ===");
  print("gifts type: ${gifts.runtimeType}");
  print("nobleGases type: ${nobleGases.runtimeType}");
  print("mhs1 type: ${mhs1.runtimeType}");
  print("mhs2 type: ${mhs2.runtimeType}");
}
