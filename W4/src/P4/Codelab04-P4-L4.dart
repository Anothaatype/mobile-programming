void main() {

  var list1 = [1, 2, null];
  print("list1: $list1");

  var list3 = [0, ...?list1]; // Menggunakan null-aware spread operator
  print("list3.length: ${list3.length}");
  print("list3: $list3");

  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);
}
