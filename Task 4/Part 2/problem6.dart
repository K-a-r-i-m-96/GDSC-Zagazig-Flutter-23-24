/*Encapsulation
• Design a Car class in Dart that encapsulates the following
properties: model, year, mileage, and isAutomatic.
• Make all properties private and provide public getter methods
for model and year.
• Create a public method getMileage that returns the current
mileage and allows updating the mileage by providing a new
value as an argument.*/
class Car {
  final String _model;
  final int _year;
  int _mileage;
  final bool _isAutomatic;

  Car(this._model, this._year, this._mileage, this._isAutomatic);

  String get model => _model;
  int get year => _year;

  int getMileage() => _mileage;
  void setMileage(int newMileage) {
    if (newMileage >= 0) {
      _mileage = newMileage;
    } else {
      throw ArgumentError("Mileage cannot be negative.");
    }
  }
}
