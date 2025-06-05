(lang dune 3.17)

(name letfun)

(generate_opam_files)

(license MIT)

(authors "Mathieu Barbin")

(maintainers "Mathieu Barbin <opensource@mbarbin.org>")

(source
 (github mbarbin/letfun))

(documentation "https://mbarbin.github.io/letfun/")

(implicit_transitive_deps false)

(package
 (name letfun)
 (synopsis "Use let-binding with functions whose last argument is a closure")
 (depends
  (ocaml
   (>= 5.2))))

(package
 (name letfun-tests)
 (synopsis "Tests for letfun")
 (depends
  (ocaml
   (>= 5.2))
  (ocamlformat
   (and
    :with-dev-setup
    (= 0.27.0)))
  (base
   (>= v0.17))
  (bisect_ppx
   (and
    :with-dev-setup
    (>= 2.8.3)))
  (expect_test_helpers_core
   (>= v0.17))
  (letfun
   (= :version))
  (ppx_expect
   (>= v0.17))
  (ppx_js_style
   (and
    :with-dev-setup
    (>= v0.17)))
  (ppx_sexp_value
   (>= v0.17))
  (ppxlib
   (>= 0.33))
  (sherlodoc
   (and
    :with-doc
    (>= 0.2)))))
