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

  test('null', () {
    expect(null.maybeAs<int>(), null);
    expect(null.maybeAsOr<int>(0), 0);
    expect(null.maybeAsOr<String>("string"), "string");
    String? string;
    expect(string.maybeAsOr<String>("string"), "string");
    int? integer;
    expect(integer.maybeAsOr<int>(9), 9);
  });

  test('custom class', () {
    expect(TestClass(0).maybeAs<int>(), null);
    expect(TestClass(0).maybeAs<TestClass2>(), null);
    expect(TestClass(0).maybeAs<TestClass3>(), null);
    final c = TestClass3(0);
    expect(c.maybeAs<TestClass3>(), c);
  });
}
