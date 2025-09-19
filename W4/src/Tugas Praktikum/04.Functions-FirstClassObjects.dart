void sayHello() {
  print("Hello!");
}

void main() {
  // Store function in a variable
  var myFunc = sayHello;
  myFunc(); // Output: Hello!

  // Pass function as a parameter
  void execute(Function fn) {
    fn();
  }

  execute(sayHello);
}
