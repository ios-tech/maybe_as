# Info

Optional as. 
maybeAs returns the current object if the type is the same and null otherwise <br />
maybeAsOr returns the current object or default value <br />
so it safe to use on dynamic fields and avoid constructions like this <br /> <br />
> dynamic object = 1; <br />
> object is String ? object : null; <br />
> object is String ? object :  "test"; <br />
> object != null ? object : "test" <br />


# Example
> import 'package:maybe_as/maybe_as.dart';

> "1".maybeAs\<String\>() // -> "1"

> 1.maybeAs\<String\>() // -> null

> "1".maybeAsOr\<int\>(0) // -> 0

> 1.maybeAsOr\<String\>("0") // -> "0"

it also works with null

> null.maybeAsOr\<String\>("test) // -> test
