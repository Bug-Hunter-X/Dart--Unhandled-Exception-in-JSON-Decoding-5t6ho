```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the response body is a JSON array
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing elements of jsonData directly, potential error here
      print('First element: ${jsonData[0]['name']}');
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // This is good practice, but sometimes errors are missed
  }
}
```