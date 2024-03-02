/*Laptops Shop:
Write a dart program using classes and objects about laptops shop
system which calculates the laptop price depending on some
features like: brand, model, ram (took it from the user)
Note: Suggest prices according to the features.*/
import 'dart:io';

class Laptop {
  String brand;
  String model;
  int ram;
  int basePrice = 500;

  Laptop(this.brand, this.model, this.ram);

  int calculatePrice() {
    switch (brand) {
      case 'Apple':
        basePrice += 200;
        break;
      case 'Dell':
        basePrice += 100;
        break;
      case 'HP':
        basePrice += 50;
        break;
    }

    if (ram > 8) {
      basePrice += 50 * (ram - 8);
    }

    return basePrice;
  }

  @override
  String toString() {
    return 'Brand: $brand, Model: $model, RAM: $ram GB, Price: \$ ${calculatePrice()}';
  }
}

void main() {
  print("Enter laptop brand:");
  String brand = stdin.readLineSync()!;
  print("Enter laptop model:");
  String model = stdin.readLineSync()!;
  print("Enter laptop RAM (GB):");
  int ram = int.parse(stdin.readLineSync()!);

  Laptop laptop = Laptop(brand, model, ram);

  print(laptop);
}
