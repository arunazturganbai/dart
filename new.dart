void main() {
  // Lists
  List<int> integers = [1, 2, 3, 4, 5];
  List<double> doubles = [1.1, 1.2, 1.3];
  List<dynamic> dynamicList = [1, 3.14, "Hello, world!"];

  print('List of integers: $integers');
  print('List of doubles: $doubles');
  print('Dynamic List: $dynamicList');

  var fixedLengthList = List.filled(3, 0);
  print('Fixed Length List: $fixedLengthList');

  integers.add(6);
  print('List after adding element: $integers');

  integers.remove(5);
  print('List after removing element: $integers');

  integers.sort();
  print('Sorted List: $integers');

  integers.clear();
  print('List after clearing: $integers');

  // forEach()
  print('Using forEach():');
  integers.forEach((value) {
    print(value);
  });

  // map()
  List<String> strings = integers.map((value) {
    return value.toString();
  }).toList();
  print('Mapped List: $strings');

  // Sets
  Set<int> integerSet = {1, 2, 3};
  print('Set of integers: $integerSet');

  integerSet.add(4);
  print('Set after adding element: $integerSet');

  integerSet.add(1);
  print('Set after adding duplicate element: $integerSet');

  // Maps
  Map<String, String> words = {
    "a": "Apple",
    "b": "Ball",
  };

  print('Map of words: $words');

  String? wordFromA = words["a"];
  print('Word associated with "a": $wordFromA');

  words.forEach((key, value) {
    print("The letter is $key");
    print("The word is $value");
  });

  // Type Inference
  var a = 3;
  var b = 3.14;
  var c = true;
  var d = [1, 2, 3];
  var e = "Demo String";
  var f = {"a": "Apple"};

  print('Type Inference: $a, $b, $c, $d, $e, $f');

  // Null Safety
  // ignore: unused_local_variable
  int? nullableInt;
  // ignore: unused_local_variable
  int nonNullableInt = 5;
  int? nullableInt2 = 5;

  nullableInt = null;
  // nullableInt2 = null; // Compile error

  // ignore: unused_local_variable
  late int lateVariable;
  lateVariable = 5;
  // print(lateVariable); // Throws an error if accessed before initialization

  // Converting nullable to non-nullable
  void square(int a) {
    print(a * a);
  }

  // ignore: unnecessary_null_comparison
  if (nullableInt2 != null) {
    square(nullableInt2);
  }

  // square(nullableInt2!); // Throws an error if nullableInt2 is null
}

