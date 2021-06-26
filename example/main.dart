import 'package:maybe_as/maybe_as.dart';

void main() {
  dynamic object;
  object = 1;
  print((object as Object).maybeAs<String>());
  object = "string";
  print(object.maybeAs<int>());
  print("1,2,3".maybeAsOr<String>("").split(","));
  print(1.maybeAsOr<String>("").split(","));
}
