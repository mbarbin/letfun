# letfun

[![CI Status](https://github.com/mbarbin/letfun/workflows/ci/badge.svg)](https://github.com/mbarbin/letfun/actions/workflows/ci.yml)
[![Coverage Status](https://coveralls.io/repos/github/mbarbin/letfun/badge.svg?branch=main)](https://coveralls.io/github/mbarbin/letfun?branch=main)

`letfun` is a tiny library which allows you to use a let-binding style to handle
functions applications that expects their last argument to be a closure. It uses
for this the `let&` operator.

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

## Code Documentation

The code documentation of the latest release is built with `odoc` and published
to `GitHub` pages [here](https://mbarbin.github.io/letfun).
