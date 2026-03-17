# letfun

:warning: This repository is now a public archive. I am no longer maintaining it.

This was a let-fun experiment! I've come across a few other projects with similar constructs. I may incorporate a similar operator in other projects, and I'll keep an eye on OCaml's stdlib for related developments.

Happy let-binding!

---

`letfun` is a tiny library which allows you to use a let-binding style to handle functions applications that expect their last argument to be a closure. It uses for this the `let&` operator.

For example:

```ocaml
let print_hello_world file =
  Out_channel.with_open_text file (fun oc ->
    Out_channel.output_string oc "Hello, ";
    Out_channel.output_string oc "World\n")
```

Can be rewritten as:

```ocaml
let print_hello_world file =
  let open Letfun in
  let& oc = Out_channel.with_open_text file in
  Out_channel.output_string oc "Hello, ";
  Out_channel.output_string oc "World\n"
```

Note that many projects use the `@@` operator in certain situations:

```ocaml
let print_hello_world file =
  Out_channel.with_open_text file
  @@ fun oc ->
  Out_channel.output_string oc "Hello, ";
  Out_channel.output_string oc "World\n"
```

:warning: This library is highly experimental, do not use!
