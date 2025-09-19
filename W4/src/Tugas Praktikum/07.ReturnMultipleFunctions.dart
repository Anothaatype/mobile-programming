// Multiple Values Using List
List<int> calculate(int a, int b) {
  return [a + b, a - b];
}

void main() {
  var result = calculate(10, 5);
  print("Sum: ${result[0]}, Subtract: ${result[1]}");
}

// Using Record Type
(int, int) calculate(int a, int b) {
  return (a + b, a - b);
}

void main() {
  var (sum, subtract) = calculate(10, 5);
  print("Sum: $sum, Subtract: $subtract");
}

// Using Class 
class CalculationResult {
  final int sum;
  final int difference;

  CalculationResult(this.sum, this.difference);
}

CalculationResult calculate(int a, int b) {
  return CalculationResult(a + b, a - b);
}

void main() {
  var result = calculate(10, 5);
  print("Sum: ${result.sum}, Difference: ${result.difference}");
}

// Using Map
Map<String, int> calculate(int a, int b) {
  return {"sum": a + b, "difference": a - b};
}

void main() {
  var result = calculate(10, 5);
  print("Sum: ${result['sum']}, Difference: ${result['difference']}");
}
