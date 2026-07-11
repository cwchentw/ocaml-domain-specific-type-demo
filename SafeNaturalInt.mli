type natural_int

val natural_int_new : int -> (natural_int, string) result
val string_of_natural_int : natural_int -> string

val add : natural_int -> natural_int -> natural_int
val sub : natural_int -> natural_int -> (natural_int, string) result
val mul : natural_int -> natural_int -> natural_int
val div : natural_int -> natural_int -> (natural_int, string) result

val (+) : natural_int -> natural_int -> natural_int
val (-) : natural_int -> natural_int -> (natural_int, string) result
val ( * ) : natural_int -> natural_int -> natural_int
val (/) : natural_int -> natural_int -> (natural_int, string) result
val (%%) : natural_int -> natural_int -> (natural_int, string) result
