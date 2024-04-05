void main() {
  // Function examples
  print('Function example:');
  print(add(3, 5)); // Output: 8

  // Optional parameters
  print('\nOptional parameters:');
  optionalParams(1); // Output: b: 10, c: null

  // Named parameters
  print('\nNamed parameters:');
  namedParams(1, c: 3, b: 2); // Output: a: 1, b: 2, c: 3

  // Function as first-class objects
  print('\nFunction as first-class objects:');
  voidFunction(() => print('Invoke function'));

  // Defining function types
  print('\nDefining function types:');
  CustomCallback callback = (int a) => print('Custom callback: $a');
  callback(10); // Output: Custom callback: 10

  // Extension methods
  print('\nExtension methods:');
  List<int> list = [1, 2, 3];
  print(list.demoFunction()); // Output: [1, 2, 3]

  // Classes examples
  print('\nClasses examples:');
  var point1 = Point(2, 3);
  print('Point 1: (${point1.x}, ${point1.y})'); // Output: Point 1: (2, 3)
  var point2 = Point.origin();
  print('Point 2: (${point2.x}, ${point2.y})'); // Output: Point 2: (0, 0)
}

// Function examples
int add(int a, int b) {
  return a + b;
}

// Optional parameters
void optionalParams(int a, [int b = 10, int? c]) {
  print('a: $a, b: $b, c: $c');
}

// Named parameters
void namedParams(int a, {int? b, int? c}) {
  print('a: $a, b: $b, c: $c');
}

// Function as first-class objects
void voidFunction(Function x) {
  x();
}

// Defining function types
typedef CustomCallback = void Function(int a);

// Extension methods
extension CustomList<E> on List<E> {
  List<E> demoFunction() {
    return this;
  }
}

// Classes examples
class Point {
  int x;
  int y;

  Point(this.x, this.y);

  Point.origin() : this(0, 0);
}
