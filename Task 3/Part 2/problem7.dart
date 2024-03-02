/*Bank Account Management:
Design a class for a bank account that includes attributes like
account number, account holder name, balance, and methods to
deposit and withdraw money. Write a program that creates two
bank account objects, performs a series of deposits and
withdrawals, and prints the final balance of each account.*/
class BankAccount {
  String accountNumber;
  String accountHolderName;
  double balance;

  BankAccount(this.accountNumber, this.accountHolderName, this.balance);

  void deposit(double amount) {
    if (amount > 0) {
      balance += amount;
      print('$amount deposited successfully.');
    } else {
      print('Invalid amount. Deposit failed.');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= balance) {
      balance -= amount;
      print('$amount withdrawn successfully.');
    } else {
      print('Insufficient balance or invalid amount. Withdrawal failed.');
    }
  }

  void printAccountDetails() {
    print('Account Number: $accountNumber');
    print('Account Holder Name: $accountHolderName');
    print('Balance: $balance');
  }
}

void main() {
  BankAccount account1 = BankAccount('123456789', 'Karim', 1000.0);
  BankAccount account2 = BankAccount('987654321', 'Shalaby', 500.0);

  account1.deposit(500.0);
  account2.withdraw(200.0);
  account1.withdraw(200.0);
  account2.deposit(1000.0);

  print('\nFinal Balance of Account 1:');
  account1.printAccountDetails();
  print('\nFinal Balance of Account 2:');
  account2.printAccountDetails();
}
