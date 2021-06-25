import 'package:flutter_test/flutter_test.dart';

import 'package:maybe_as/maybe_as.dart';

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
  });
}
