void main() {
  // If statement
  var a = 5;
  if (a > 10) {
    print('A is greater than 10');
  }

  // Else block
  var b = 5;
  if (b > 10) {
    print('Execute this block when B is greater than 10');
  } else {
    print('Execute this block when B is smaller than or equal to 10');
  }

  // Else if block
  var c = 5;
  if (c > 10) {
    print('C is greater than 10');
  } else if (c > 5) {
    print('C is greater than 5 but less than 10');
  } else {
    print('C is less than or equal to 5');
  }

  // Ternary operator
  int d = 5;
  d > 5 ? print('D is greater than 5') : print('D is smaller than or equal to 5');

  bool condition = true;
  // ignore: dead_code
  int e = condition ? 1 : -1;
  print('Value of E: $e');

  // Switch statement
  String color = 'red';
  switch (color) {
    case 'blue':
      print('COLOR IS BLUE');
      break;
    case 'red':
      print('COLOR IS RED');
      break;
    case 'yellow':
      print('COLOR IS YELLOW');
      break;
    default:
      print('NO COMPATIBLE COLOR');
      break;
  }

  
}
