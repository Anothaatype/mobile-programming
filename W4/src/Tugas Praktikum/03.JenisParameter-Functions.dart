// Positional Paramaeters 
void greet(String name, int age) {
  print("Hello $name, you are $age years old");
}

void main() {
  greet("Alice", 25); // Correct
  // greet(25, "Alice"); // Error: wrong order
}

// Optional Positional Parameters ([])
void greet(String name, [int? age]) {
  print("Hello $name, your age is ${age ?? 'unknown'}");
}

void main() {
  greet("Budi"); // Hello Budi, your age is unknown
  greet("Andi", 30); // Hello Andi, your age is 30
}

// Named Parameters ({})
void greet({String? name, int? age}) {
  print("Hello $name, you are $age years old");
}

void main() {
  greet(name: "Citra", age: 22); // Hello Citra, you are 22 years old
  greet(age: 18, name: "Rina"); // Order doesn’t matter
}

// Default Parameter Values
void greet({String name = "Anonymous", int age = 0}) {
  print("Hello $name, you are $age years old");
}

void main() {
  greet(); // Hello Anonymous, you are 0 years old
  greet(name: "Dina"); // Hello Dina, you are 0 years old
  greet(name: "Eko", age: 21); // Hello Eko, you are 21 years old
}
