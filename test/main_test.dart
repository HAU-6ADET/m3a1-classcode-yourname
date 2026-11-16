import 'dart:convert';
import 'dart:io';

import 'package:test/test.dart';

// Runs lib/directory.dart the way `dart run lib/directory.dart` does and
// checks that main() finishes and shows a lookup that misses.
Future<ProcessResult> runProgram(String path) async {
  final process = await Process.start(Platform.resolvedExecutable, ['run', path]);
  await process.stdin.close();
  final out = process.stdout.transform(utf8.decoder).join();
  final err = process.stderr.transform(utf8.decoder).join();
  final code = await process.exitCode.timeout(const Duration(seconds: 90));
  return ProcessResult(process.pid, code, await out, await err);
}

void main() {
  group('main() in lib/directory.dart', () {
    test('lib/directory.dart exists and declares main()', () {
      final file = File('lib/directory.dart');
      expect(file.existsSync(), isTrue, reason: 'Keep your program in lib/directory.dart.');
      expect(file.readAsStringSync(), matches(RegExp(r'\bmain\s*\(')),
          reason: 'lib/directory.dart needs a main() function so `dart run` can start it.');
    });

    test('runs without error and shows a lookup that misses', () async {
      final result = await runProgram('lib/directory.dart');
      expect(result.exitCode, equals(0),
          reason: '`dart run lib/directory.dart` must finish without an error.\n${result.stderr}');
      expect(result.stdout as String, contains('Not found'),
          reason: 'Look up a name that is not in the book and print the result.');
    }, timeout: const Timeout(Duration(minutes: 2)));
  });
}
