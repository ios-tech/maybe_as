# Info

Optional as. 
maybeAs returns the current object if the type is the same and null otherwise
maybeAsOr returns the current object or default value
so it safe to use on dynamic fields and avoid constructions like this
dynamic object = 1;
object is String ? object : null;
object is String ? object :  "test";
object != null ? object : "test"


# Example

"1".maybeAs<String>() // -> "1"
1.maybeAs<String> // -> null

"1".maybeAsOr<int>(0) // -> 0
1.maybeAsOr<String>("0") // -> "0"

it also works with null
null.maybeAsOr<String>("test) // -> test
