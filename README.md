# Info

Optional as. 
maybeAs returns the current object if the type is the same and null otherwise <br />
maybeAsOr returns the current object or default value <br />
so it safe to use and avoid constructions like this: 
```
dynamic object = 1; 
object is String ? object : null; 
object is String ? object :  "test"; 
```

# Example
```
import 'package:maybe_as/maybe_as.dart';

"1".maybeAs<String>() // -> "1"
1.maybeAs<String>() // -> null
"1".maybeAsOr<int>(0) // -> 0
1.maybeAsOr<String>("0") // -> "0"
```

with dynamic type

```
dynamic variable;
variable = 1;
(variable as Object).maybeAsOr<String>("0") // -> "0"
variable = "string";
variable.maybeAsOr<String>("0") // -> "string"
```
