void main() {
  // Nama: Baskoro Seno Aji
  // NIM: 2341720063
  
  print("=== LANGKAH 1 & 2: Kode Asli ===");
  
  // Langkah 1 - Kode asli
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print("list1: $list");
  print("list2: $list2");
  print("list2.length: ${list2.length}");
  
  print("\n=== LANGKAH 3: Perbaikan dengan null ===");
  
  // Langkah 3 - Perbaikan
  var list1 = [1, 2, null];
  print("list1: $list1");
  
  var list3 = [0, ...?list1]; // Menggunakan null-aware spread operator
  print("list3.length: ${list3.length}");
  print("list3: $list3");
  
  print("\n=== LANGKAH 4: Conditional dengan promoActive ===");
  
  // Langkah 4 - Dengan variabel promoActive
  bool promoActive = true;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print("nav (promoActive=true): $nav");
  
  // Test dengan promoActive = false
  promoActive = false;
  nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print("nav (promoActive=false): $nav");
  
  print("\n=== LANGKAH 5: Conditional dengan login case ===");
  
  // Langkah 5 - Dengan variabel login
  String login = 'Manager';
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print("nav2 (login='Manager'): $nav2");
  
  // Test dengan login berbeda
  login = 'Employee';
  nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print("nav2 (login='Employee'): $nav2");
  
  login = 'Guest';
  nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print("nav2 (login='Guest'): $nav2");
}