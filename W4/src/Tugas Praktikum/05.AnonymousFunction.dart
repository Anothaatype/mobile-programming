void main() {
  // Anonymous function in forEach
  var numbers = [1, 2, 3];
  numbers.forEach((n) {
    print(n * 2);
  });

  // Arrow syntax for anonymous function
  numbers.forEach((n) => print(n + 10));
}
