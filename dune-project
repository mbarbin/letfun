(lang dune 3.16)

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
   (>= 5.2))
  (bisect_ppx
   (and
    :dev
    (>= 2.8.3)))
  (ppx_js_style
   (and
    :dev
    (>= v0.17)
    (< v0.18)))))

(package
 (name letfun-tests)
 (synopsis "Tests for letfun")
 (depends
  (ocaml
   (>= 5.2))
  (base
   (and
    (>= v0.17)
    (< v0.18)))
  (bisect_ppx
   (and
    :dev
    (>= 2.8.3)))
  (expect_test_helpers_core
   (and
    (>= v0.17)
    (< v0.18)))
  (letfun
   (= :version))
  (ppx_expect
   (and
    (>= v0.17)
    (< v0.18)))
  (ppx_js_style
   (and
    :dev
    (>= v0.17)
    (< v0.18)))
  (ppx_sexp_value
   (and
    (>= v0.17)
    (< v0.18)))
  (ppxlib
   (>= 0.33))))
