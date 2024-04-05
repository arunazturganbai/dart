import 'dart:async';
import 'dart:isolate';


// Function to simulate loading news titles from cloud
Future<List<String>> loadTitlesFromCloud() async {
  // Simulating delay for network request
  await Future.delayed(Duration(seconds: 2));
  return ["Title 1", "Title 2", "Title 3"];
}

void main() async {
  // Async function to fetch news titles
  Future<List<String>> fetchNewsTitles() async {
    var titles = await loadTitlesFromCloud();
    return titles;
  }

  // Fetch news titles using then() callback
  fetchNewsTitles().then((list) {
    print("News Titles: $list");
  }).catchError((err) {
    print("Error: $err");
  }).timeout(Duration(seconds: 10), onTimeout: () {
    print("Timeout");
  });

  // Delayed future to print message after 1 second
  await Future.delayed(Duration(seconds: 1));
  print("Delay complete");


  // Create a Stream to count numbers
  Stream<int> countStream(int end) async* {
    for (int i = 1; i <= end; i++) {
      yield i;
    }
  }

  // Listen to the countStream and print data
  countStream(5).listen((data) {
    print("Stream Data: $data");
  }, onDone: () {
    print("Stream completed");
  }, onError: (err) {
    print("Stream Error: $err");
  });

  // Spawning an isolate
  var isolate = await Isolate.spawn(heavyFunction, 'id');
  // Killing an isolate
  isolate.kill(priority: Isolate.immediate);
}

// Function to simulate heavy computation
void heavyFunction(dynamic message) {
  // Simulating heavy computation
  for (int i = 0; i < 1000000000; i++) {
    // Do something heavy
  }
}
