import 'package:flutter_test/flutter_test.dart';

import 'package:maybe_as/maybe_as.dart';

import 'test_class.dart';

void main() {
  test('optional value', () {
    final object = "string";
    expect(object.maybeAs<String>(), object);
    expect(object.maybeAs<int>(), null);
  });

  test('with default value', () {
    expect("1,2,3".maybeAsOr<String>("").split(","), ["1", "2", "3"]);
    expect(1.maybeAsOr<String>("").split(","), [""]);
  });

  test('custom class', () {
    expect(TestClass(0).maybeAs<int>(), null);
    expect(TestClass(0).maybeAs<TestClass2>(), null);
    expect(TestClass(0).maybeAs<TestClass3>(), null);
    final c = TestClass3(0);
    expect(c.maybeAs<TestClass3>(), c);
    dynamic test;
    test = 1;
    expect((test as Object).maybeAsOr<String>("string"), "string");
    test = "str";
    expect(test.maybeAsOr<String>("string"), "str");
  });
}
