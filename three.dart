void main() {
  // While loop
  int a = 0;
  while (a < 5) {
    print('While loop: $a');
    a++;
  }

  // For loop
  for (int i = 1; i < 5; i++) {
    print('For loop: $i');
  }

  // For loop with list iteration
  var list = [1, 2, 3, 4, 5];
  for (int i = 0; i < list.length; i++) {
    print('List iteration: ${list[i]}');
  }

  // For loop with multiple variables
  for (int i = 1, j = 2, k = 3; i < 3; i++, j++, k++) {
    print('Multiple variables in loop: $i, $j, $k');
  }

  // For-in (for-each) loop
  var numList = [1, 2, 3, 4, 5];
  for (var number in numList) {
    print('For-in loop: $number');
  }

  // Do-while loop
  int counter = 0;
  do {
    print('Do-while loop: $counter');
    counter++;
  } while (counter < 5);

  // Break and continue keywords
  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      break;
    }
    print('Break keyword: $i');
  }

  for (int i = 0; i < 10; i++) {
    if (i == 5) {
      continue;
    }
    print('Continue keyword: $i');
  }
}
