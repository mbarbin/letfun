let%expect_test "let&-" =
  let () =
    let open Letfun in
    let&- x = List.iter [ 1; 2; 3 ] in
    print_s [%sexp (x : int)]
  in
  [%expect {|
    1
    2
    3 |}]
;;

module Resource : sig
  type t

  val ignore : t -> unit
  val with_t : (t -> 'a) -> 'a
  val with_t_f : f:(t -> 'a) -> 'a
end = struct
  type t = unit

  let ignore () = ()
  let with_t f = f ()
  let with_t_f ~f = f ()
end

let%expect_test "Resource" =
  let open Letfun in
  let& x = Resource.with_t in
  let&- y = Resource.with_t_f in
  Resource.ignore x;
  Resource.ignore y
;;
