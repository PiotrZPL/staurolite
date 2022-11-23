import 'package:dbml/dbml.dart';
import 'package:test/test.dart';

void main() {
  group('A group of tests', () {
    final awesome = Hyperlink();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.toHTML(), "<a></a>");
    });
  });
}
