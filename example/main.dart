import 'package:maybe_as/maybe_as.dart';

void main() {
  final object = "string";
  print(object.maybeAs<String>());
  print(object.maybeAs<int>());
  print("1,2,3".maybeAsOr<String>("").split(","));
  print(1.maybeAsOr<String>("").split(","));
  print(null.maybeAs<int>());
  print(null.maybeAsOr<int>(0));
  print(null.maybeAsOr<String>("string"));
}
