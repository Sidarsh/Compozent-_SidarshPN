void main() {
  void greet(String name, [String? message = "Welcome"]) {
    print("Hello $name, $message");
  }

  //calling greet function
  greet("Sidarsh", "Bonjour");
  //testing optional paramter
  greet("Sidarsh");
}
