```dart
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonString = response.body;
      if (jsonString.isNotEmpty) {
        try {
          final jsonData = jsonDecode(jsonString);
          //Check that jsonData is a list before accessing elements
          if (jsonData is List && jsonData.isNotEmpty) {
            for (var item in jsonData) {
              //Check if each item has a 'name' property before accessing it
              if (item is Map && item.containsKey('name')) {
                print('Name: ${item['name']}');
              } else {
                print('Invalid JSON format: Missing or malformed name field.');
              }
            }
          } else {
            print('Invalid JSON format: Expected a non-empty array.');
          }
        } on FormatException catch (e) {
          print('JSON format error: $e');
        }
      } else {
        print('Empty JSON response.');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
  }
}
```