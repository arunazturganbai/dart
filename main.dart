void main() {
  print('Hello, World!');
  // Numbers
  num a = 3;
  num b = 3.14;
  
  print('num: $a, $b');
  print('toString(): ${b.toString()}');
  print('toStringAsPrecision(2): ${b.toStringAsPrecision(2)}');
  print('ceil(): ${b.ceil()}');
  print('floor(): ${b.floor()}');
  
  int c = 3;
  print('int: $c');
  
  double pi = 3.14;
  print('double: $pi');
  
  double d = 1;
  print('Implicit conversion to double: $d');
  
  double e = 1.toDouble();
  print('Explicit conversion to double: $e');
  
  double f = double.parse('3.14');
  print('Parsing string to double: $f');
  
  // Strings
  String s1 = "Hello, World!";
  String s2 = 'Hello, World!';
  
  print('String with double quotes: $s1');
  print('String with single quotes: $s2');
  
  String s3 = '''This
  Is a multi-line String''';
  
  print('Multi-line String: $s3');
  
  int answer = 42;
  String response1 = "The answer is: " + answer.toString();
  print('String with concatenation: $response1');
  
  String response2 = "The answer is: $answer";
  print('String with interpolation: $response2');
  
  String response3 = "The answer is: ${answer + 5}";
  print('String with interpolation and operation: $response3');
  
  // Booleans
  bool demoValue = true;
  bool otherValue = false;
  
  print('Boolean values: $demoValue, $otherValue');
}
