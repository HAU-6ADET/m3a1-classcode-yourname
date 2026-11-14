import 'dart:convert';
import 'dart:io';

import 'package:m3a1/directory.dart';
import 'package:test/test.dart';

void main() {
  group('addContact', () {
    test('stores a number under the name', () {
      final book = <String, String>{};
      addContact(book, 'Ana', '0917 000 0001');
      expect(book['Ana'], equals('0917 000 0001'));
    });
    test('the same name again replaces the number', () {
      final book = <String, String>{};
      addContact(book, 'Ana', '1');
      addContact(book, 'Ana', '2');
      expect(book.length, equals(1));
      expect(book['Ana'], equals('2'));
    });
  });

  group('lookup', () {
    test('finds a saved number', () => expect(lookup({'Ben': '0917 000 0002'}, 'Ben'), equals('0917 000 0002')));
    test('a missing name is "Not found", not a crash', () => expect(lookup({'Ben': '1'}, 'Zed'), equals('Not found')));
  });

  group('namesStartingWith', () {
    final book = {'Ana': '1', 'ben': '2', 'Alex': '3', 'Cara': '4'};
    test('keeps matching names, sorted', () => expect(namesStartingWith(book, 'A'), equals(['Alex', 'Ana'])));
    test('ignores capital letters', () => expect(namesStartingWith(book, 'b'), equals(['ben'])));
    test('no match is an empty list', () => expect(namesStartingWith(book, 'z'), isEmpty));
  });

  group("Student details in your private activity copy", () {
    late Map<String, dynamic> info;
    setUpAll(() {
      info = jsonDecode(File("student.json").readAsStringSync()) as Map<String, dynamic>;
    });
    for (final field in ["fullName", "studentNumber", "studentEmail", "classCode", "githubAccount", "room", "pcNumber"]) {
      test("$field is filled in", () {
        final value = info[field];
        expect(value, isA<String>(), reason: "Set $field in student.json.");
        expect((value as String).trim(), isNotEmpty, reason: "Set $field in your private copy of student.json.");
      });
    }
    test("classCode identifies one of the new ADET classes", () {
      expect(info["classCode"], isIn(["2223", "2293", "2182", "2294"]), reason: "Use the class code shown in your own Canvas course.");
    });
  });
}
