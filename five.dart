void main() {
  // Ternary operator
  int level = 50;
  String expertise = level > 60 ? "Expert" : "Amateur";
  print('Ternary operator: $expertise'); // Output: Amateur

  // Null-aware operator ??
  Null name = null;
  String defaultName = name ?? "John Doe";
  print('Null-aware operator: $defaultName'); // Output: John Doe

  // Null-aware cascade operator ?..
  List<int>? list;
  // ignore: dead_code
  list?..add(1)..add(2)..add(3);
  print('Null-aware cascade operator: $list'); // Output: [1, 2, 3]

  // Spread operator
  var demoList = [1, 2, 3, 4, 5];
  var otherList = [
    6,
    7,
    8,
    ...demoList,
  ];
  print('Spread operator: $otherList'); // Output: [6, 7, 8, 1, 2, 3, 4, 5]

  // Fat arrow operator =>
  void demoFunction(String s) => print(s);
  demoFunction('Fat arrow operator'); // Output: Fat arrow operator
}
