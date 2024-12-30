void main() {
  Set<int> numbers = {1, 2, 3, 4};
  print("Initial set: $numbers");
  numbers.add(5);
  print("After adding 5: $numbers");
  numbers.remove(2);
  print("After removing 2: $numbers");
  print("Final Set: $numbers");
}
