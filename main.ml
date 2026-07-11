open Printf

let _ =
  let open SafeNaturalInt in
  let a = natural_int_new 3 in
  let b = natural_int_new 4 in
  match a, b with
  | Ok na, Ok nb ->
    (match (na %% nb) with
     | Ok n -> n
       |> string_of_natural_int
       |> Printf.printf "%s\n"
     | Error msg -> msg
       |> Printf.eprintf "%s\n")
  | Error msg, _ -> Printf.eprintf "%s\n" msg
  | _, Error msg -> Printf.eprintf "%s\n" msg

let _ =
  let open NaturalInt in
  try
    let a = natural_int_new 3 in
    let b = natural_int_new 4 in
    Printf.printf "%s\n" (string_of_natural_int (a %% b))
  with Invalid_number msg ->
    Printf.eprintf "%s\n" msg
