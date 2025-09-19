// Lexical Scope
void main() {
  var name = "Budi";

  void sayHello() {
    print("Hello $name"); // Accessible due to lexical scope
  }

  sayHello();
}

// Lexical Closure
  Function makeMultiplier(int factor) {
  return (int x) => x * factor;
}

void main() {
  var doubleIt = makeMultiplier(2);
  var tripleIt = makeMultiplier(3);

  print(doubleIt(5)); // 10
  print(tripleIt(5)); // 15
}

