# Dart JSON Decoding Error

This repository demonstrates a common error in Dart when handling JSON responses from APIs: assuming the structure of the JSON data without proper error handling.

The `bug.dart` file contains code that attempts to access elements of a JSON array directly, without checking for potential null values or empty responses. This can lead to runtime exceptions.

The `bugSolution.dart` file provides a corrected version that handles potential errors and checks the structure of the JSON response before accessing elements.

## How to Reproduce

1. Clone this repository.
2. Run `bug.dart` (You might need to add the `http` dependency to your `pubspec.yaml`).
3. Observe the exception that occurs if the API response is unexpected.
4. Run `bugSolution.dart` to see the corrected and robust implementation.
