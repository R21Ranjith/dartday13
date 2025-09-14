import 'dart:io';

void main() {
  try {
    stdout.write("Enter a number: ");
    var input = stdin.readLineSync();
    if (input == null || input.isEmpty) {
      throw FormatException("No input provided!");
    }

    int number = int.parse(input); // can throw error
    print("You entered: $number");
  } catch (e) {
    print("Error: Invalid input ($e)");
  } finally {
    print("Program finished.");
  }
}
