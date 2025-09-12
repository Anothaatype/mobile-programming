void main() {
  // Example of Null Safety
  String? name; // The ? means this variable can hold null
  print(name); // Output: null

  name = "Baskoro";
  print("Hello, $name"); // Output: Hello, Baskoro

  // Example of Late Variable
  late int age; // Declared but not initialized yet
  age = 21; // Initialized later
  print("Age is $age"); // Output: Age is 21
}
