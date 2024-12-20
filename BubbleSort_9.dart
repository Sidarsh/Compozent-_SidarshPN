void bubbleSort(List<int> numbers) {
  int n = numbers.length;
  for (int i = 0; i < n - 1; i++) {
    for (int j = 0; j < n - i - 1; j++) {
      if (numbers[j] > numbers[j + 1]) {
        
        int a = numbers[j];
        numbers[j] = numbers[j + 1];
        numbers[j + 1] = a;
      }
    }
  }
}
void main() {
  List<int> list = [5, 2, 9, 1, 5, 6];
  bubbleSort(list);
  print("Sorted list: $list");
}
