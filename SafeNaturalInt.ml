open Printf

type natural_int = int

let natural_int_new (n : int) =
  if n >= 0 then Ok(n)
  else Error("Invalid number: " ^ string_of_int(n))

let string_of_natural_int n = string_of_int(n)

let add a b = Int.add a b
let sub a b =
  if a >= b then Ok(Int.sub a b)
  else Error(Printf.sprintf "Invalid computation: %d - %d" a b)
let mul a b = Int.mul a b
let div a b =
  if b > 0 then Ok(Int.div a b)
  else Error(Printf.sprintf "Invalid computation: %d / %d" a b)

let (+) a b = add a b
let (-) a b = sub a b
let ( * ) a b = mul a b
let (/) a b = div a b
let (%%) a b =
  if b > 0 then Ok(a mod b)
  else Error(Printf.sprintf "Invalid computation: %d mod %d" a b)
