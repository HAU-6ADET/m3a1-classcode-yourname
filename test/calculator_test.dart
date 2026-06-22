import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

import '../bin/calculator.dart';

void main() {
  test('student.json is filled in', () {
    final info = jsonDecode(File('student.json').readAsStringSync())
        as Map<String, dynamic>;
    for (final field in [
      'classCode',
      'fullName',
      'studentNumber',
      'studentEmail',
      'personalEmail',
      'githubAccount',
    ]) {
      expect(info[field], isNotEmpty, reason: 'Set "$field" in student.json');
    }
  });

  group('Calculator functions return the right value', () {
    test('sum returns the total', () {
      expect(sum(2, 3), 5);
      expect(sum(-4, 10), 6);
    });

    test('difference returns first minus second', () {
      expect(difference(10, 4), 6);
      expect(difference(4, 10), -6);
    });

    test('product returns the multiplication', () {
      expect(product(6, 7), 42);
      expect(product(5, 0), 0);
    });

    test('quotient returns first divided by second', () {
      expect(quotient(10, 4), closeTo(2.5, 1e-9));
      expect(quotient(9, 3), closeTo(3, 1e-9));
    });
  });
}
