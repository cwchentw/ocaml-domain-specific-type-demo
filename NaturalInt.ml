open SafeNaturalInt

exception Invalid_number of string

type natural_int = SafeNaturalInt.natural_int

let natural_int_new n =
  let x = SafeNaturalInt.natural_int_new n in
  match x with
  | Ok n -> n
  | Error msg -> raise (Invalid_number msg)

let string_of_natural_int n = SafeNaturalInt.string_of_natural_int n

let add a b = SafeNaturalInt.add a b
let sub a b =
  let n = SafeNaturalInt.sub a b in
  match n with
  | Ok nn -> nn
  | Error msg -> raise (Invalid_number msg)
let mul a b = SafeNaturalInt.mul a b
let div a b =
  let n = SafeNaturalInt.div a b in
  match n with
  | Ok nn -> nn
  | Error msg -> raise (Invalid_number msg)

let (+) a b = add a b
let (-) a b = sub a b
let ( * ) a b = mul a b
let (/) a b = div a b
let (%%) a b =
  let n = SafeNaturalInt.(%%) a b in
  match n with
  | Ok nn -> nn
  | Error msg -> raise (Invalid_number msg)
