class Car {
  String brand = "Toyota";
  String model = "Corolia";
  int year = 2020;

  void displayInfo() {
    print("Car Details:");
    print("Brand: $brand");
    print("Model: $model");
    print("Year: $year");
  }
}

void main() {
  Car car = new Car();
  car.displayInfo();
}
