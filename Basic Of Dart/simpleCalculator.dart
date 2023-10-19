import 'dart:io';

void main() {
  print('Simple Calculator');
  print('Enter an operation (+, -, *, /):');
  String operation = stdin.readLineSync();

  if (operation != '+' && operation != '-' && operation != '*' && operation != '/') {
    print('Invalid operation. Please enter +, -, *, or /.');
    return;
  }

  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync());

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync());

  double result;
  switch (operation) {
    case '+':
      result = num1 + num2;
      break;
    case '-':
      result = num1 - num2;
      break;
    case '*':
      result = num1 * num2;
      break;
    case '/':
      if (num2 == 0) {
        print('Division by zero is not allowed.');
        return;
      }
      result = num1 / num2;
      break;
  }

  print('Result: $num1 $operation $num2 = $result');
}
