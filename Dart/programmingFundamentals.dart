// Dart Programming Fundamentals

void main() {
  print("Welcome to Dart Programming!");

  // Variable Declarations with Data Types
  String developerName = "Vaibhav Shendre";
  int mobileNumber = 9876543210;
  double currentVersion = 3.0;
  bool isDeveloper = true;

  print("Developer: $developerName");
  print("Contact: $mobileNumber");
  print("Version: $currentVersion");
  print("Status: $isDeveloper");

  // Type Inference with var and dynamic
  var projectName = "E-Commerce Platform";
  dynamic currentTask = "Building REST APIs";
  currentTask = "Testing endpoints";
  print("Project: $projectName");
  print("Current Task: $currentTask");

  // Conditional Statement - Grade Evaluator
  int studentScore = 85;
  if (studentScore >= 90) {
    print("Grade: A+ (Outstanding)");
  } else if (studentScore >= 80) {
    print("Grade: A (Excellent)");
  } else if (studentScore >= 70) {
    print("Grade: B+ (Very Good)");
  } else if (studentScore >= 40) {
    print("Grade: B (Good - Passed)");
  } else {
    print("Grade: F (Failed)");
  }

  // For Loop - Table of 7
  print("=== Multiplication Table of 7 ===");
  for (int i = 1; i <= 5; i++) {
    print("7 × $i = ${7 * i}");
  }

  // While Loop - Countdown
  print("\n=== Launch Countdown ===");
  int timer = 3;
  while (timer > 0) {
    print("T-minus $timer seconds...");
    timer--;
  }
  print("Liftoff! 🚀");

  // Function without return value
  displayWelcomeMessage("Vaibhav");

  // Function with return value
  int totalAmount = calculateTotal(1000, 15);
  print("Total amount with tax: ₹$totalAmount");

  // List Collection
  List<String> programmingLanguages = ["Dart", "JavaScript", "Python", "Java"];
  print("\nProgramming Languages: $programmingLanguages");
  programmingLanguages.add("Kotlin");
  print("Updated List: $programmingLanguages");

  // Map/Dictionary Collection
  Map<String, double> productPrices = {
    "Laptop": 50000.0,
    "Mouse": 500.0,
    "Keyboard": 1500.0,
  };
  print("\nProduct Prices: $productPrices");

  // Class and Object Creation
  MobilePhone phone = MobilePhone("Samsung", "Galaxy S21", 65000);
  phone.showPhoneDetails();
}

// Function Definitions
void displayWelcomeMessage(String user) {
  print("\nWelcome, $user! Happy coding in Dart.");
}

int calculateTotal(int price, int taxPercent) {
  int tax = (price * taxPercent) / 100;
  return price + tax;
}

// Class Definition
class MobilePhone {
  String brand;
  String model;
  int price;

  MobilePhone(this.brand, this.model, this.price);

  void showPhoneDetails() {
    print("\n=== Mobile Phone Details ===");
    print("Brand: $brand");
    print("Model: $model");
    print("Price: ₹$price");
  }
}