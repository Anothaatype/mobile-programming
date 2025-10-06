class Item {
  String name;
  int price;
  String imageUrl; // ← TAMBAHKAN INI (foto produk)
  int stock; // ← TAMBAHKAN INI (stok)
  double rating; // ← TAMBAHKAN INI (rating)

  Item({
    required this.name,
    required this.price,
    required this.imageUrl, // ← TAMBAHKAN INI
    required this.stock, // ← TAMBAHKAN INI
    required this.rating, // ← TAMBAHKAN INI
  });
}
