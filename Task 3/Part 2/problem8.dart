/*Employee Organization Structure:
Imagine you're tasked with organizing an employee hierarchy for a
company. Your goal is to design a system where you have a base
category of employees, each with their own set of details.
However, there are different types of employees, such as
managers and workers, each with their own unique attributes. How
would you structure this system to ensure that common attributes
are inherited while allowing for specific details to be added for
different employee types?*/
class Employee {
  String name;
  int employeeID;
  String email;
  double salary;

  Employee(this.name, this.employeeID, this.email, this.salary);

  void displayDetails() {
    print('Name: $name');
    print('Employee ID: $employeeID');
    print('Email: $email');
    print('Salary: \$${salary.toStringAsFixed(2)}');
  }
}

class Manager extends Employee {
  String department;

  Manager(
      String name, int employeeID, String email, double salary, this.department)
      : super(name, employeeID, email, salary);

  @override
  void displayDetails() {
    super.displayDetails();
    print('Department: $department');
  }
}

class Worker extends Employee {
  String role;

  Worker(String name, int employeeID, String email, double salary, this.role)
      : super(name, employeeID, email, salary);

  @override
  void displayDetails() {
    super.displayDetails();
    print('Role: $role');
  }
}

void main() {
  Manager manager = Manager('Karim', 1001, 'Karim@example.com', 60000.0, 'HR');
  Worker worker =
      Worker('Shalaby', 2001, 'Shalaby@example.com', 40000.0, 'Developer');

  manager.displayDetails();
  print('\n');
  worker.displayDetails();
}
