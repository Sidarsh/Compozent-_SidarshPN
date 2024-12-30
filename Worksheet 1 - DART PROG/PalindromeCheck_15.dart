bool isPalindrome(String str) {
  String reversed = str.split('').reversed.join('');
  return str == reversed;
}

void main() {
  String inputString = "madam";
  if (isPalindrome(inputString)) {
    print("The string '$inputString' is a palindrome.");
  } 
  else {
    print("The string '$inputString' is not a palindrome.");
  }
}
