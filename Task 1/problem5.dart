//Write a program in Dart to remove all whitespaces from String.
void main() {
  String name = 'Hello,         my          name is          karim';
  print(name.replaceAll(RegExp(r'\s+'), ''));
}
