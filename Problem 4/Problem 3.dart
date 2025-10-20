import 'dart:io';

void main() {
  List<double> expenses = [];
  print('Enter 5 expense amounts:');

  for (int i = 0; i < 5; i++) {
    stdout.write('Expense ${i + 1}: ');
    double amount = double.parse(stdin.readLineSync()!);
    expenses.add(amount);
  }

  double total = expenses.reduce((a, b) => a + b);
  print('Total Expense: \$${total.toStringAsFixed(2)}');
}
