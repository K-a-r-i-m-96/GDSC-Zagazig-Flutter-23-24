/*Geometric Shape Abstraction:
Picture yourself as a software developer working on a project that
involves geometric calculations. Your task is to create a system
that can handle various geometric shapes. These shapes should
be organized in a hierarchy, with a base class providing common
functionality like calculating area and perimeter. However, each
specific shape, whether it's a rectangle, circle, or triangle, has its
own formulae for these calculations. How would you design this
system to ensure flexibility and efficiency in handling
different shapes?*/
import 'dart:math';

abstract class Shape {
  double calculateArea();
  double calculatePerimeter();
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double calculateArea() {
    return width * height;
  }

  @override
  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }

  @override
  double calculatePerimeter() {
    return 2 * pi * radius;
  }
}

class Triangle extends Shape {
  double side1;
  double side2;
  double side3;

  Triangle(this.side1, this.side2, this.side3);

  @override
  double calculateArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  @override
  double calculatePerimeter() {
    return side1 + side2 + side3;
  }
}

void main() {
  Rectangle rectangle = Rectangle(5, 3);
  Circle circle = Circle(4);
  Triangle triangle = Triangle(3, 4, 5);

  print('Area of Rectangle: ${rectangle.calculateArea()}');
  print('Perimeter of Rectangle: ${rectangle.calculatePerimeter()}');

  print('Area of Circle: ${circle.calculateArea()}');
  print('Circumference of Circle: ${circle.calculatePerimeter()}');

  print('Area of Triangle: ${triangle.calculateArea()}');
  print('Perimeter of Triangle: ${triangle.calculatePerimeter()}');
}
