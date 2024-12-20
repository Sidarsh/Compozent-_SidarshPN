import "dart:io";

void main() {
  print("Fibonacci Series");
  int a = 0;
  int b = 1;
  int s = 10;
  stdout.write("$a $b");
  int sum;
  for (int i = 2; i < s; i++) {
    sum = a + b;
    stdout.write(" $sum");
    a = b;
    b = sum;
  }
}
