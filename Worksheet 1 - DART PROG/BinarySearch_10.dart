int binarySearch(List<int> list, int target) {
  int left = 0;
  int right = list.length - 1;
  while (left <= right) {
    int mid = left + (right - left) ~/ 2; 
    if (list[mid] == target) {
      return mid; 
    }
    if (list[mid] > target) {
      right = mid - 1;
    } 
    else {
      left = mid + 1;
    }
  }
  return -1; 
}

void main() {
  List<int> numbers = [1,3,5,7,9,11];
  int target = 7;
  int result = binarySearch(numbers, target);
  if (result != -1) {
    print("Number found at index: $result");
  } else {
    print("Number not found in the list.");
  }
}
