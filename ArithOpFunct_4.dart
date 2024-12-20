int Addition(int c, int d) {
  return c + d;
}

int Subtraction(int c, int d) {
  return c - d;
}

int Multiplication(int c, int d) {
  return c * d;
}

double Division(int c, int d) {
  return c / d;
}

void main() {
  print("Arithmetic Operations:");
  int a = 10;
  int b = 5;
  print("Addition: ${Addition(a, b)}");
  print("Subtraction: ${Subtraction(a, b)}");
  print("Multiplication: ${Multiplication(a, b)}");
  print("Division: ${Division(a, b)}");
}