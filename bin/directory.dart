// M3A1: the contact directory program. Type along with the instructor.
// Run it with: dart run bin/directory.dart
import 'package:m3a1/directory.dart';

void main() {
  Map<String, String> book = {};
  print('Contacts: ${book.length}');
  print(lookup(book, 'Ana'));
}
