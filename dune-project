(lang dune 3.15)

(name letfun)

(generate_opam_files)

(license MIT)

(authors "Mathieu Barbin")

(maintainers "Mathieu Barbin")

(source
 (github mbarbin/letfun))

(documentation "https://mbarbin.github.io/letfun/")

(package
 (name letfun)
 (synopsis "Use let-binding with functions whose last argument is a closure")
 (depends
  (ocaml
   (>= 5.1))
  (base
   (and
    :with-test
    (>= v0.16)
    (< v0.17)))
  (expect-test-helpers
   (and
    :with-test
    (>= v0.16)
    (< v0.17)))
  (ppx_expect
   (and
    :with-test
    (>= v0.16)
    (< v0.17)))
  (ppx_js_style
   (and
    :dev
    (>= v0.16)
    (< v0.17)))
  (ppx_sexp_value
   (and
    :with-test
    (>= v0.16)
    (< v0.17)))))
