let rec fib n =
  if n < 2 then
    n
  else
    (fib (n-2)) + (fib (n-1))
;;

let () = print_endline (string_of_int (fib 42))
;;
