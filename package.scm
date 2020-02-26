(package
  (name sxml)
  (version 0.1)
  (license "BSD")
  (authors "Oleg Kiselyov (specification), Alex Shinn (code)")
  (maintainers "Arthur Maciel <arthurmaciel at gmail dot com>")
  (description "SXML is a native representation of XML in terms of standard Scheme data types")
  (tags "data structures")
  (docs "https://github.com/cyclone-scheme/cyclone-winds/wiki/sxml")
  (test "test.scm")
  (dependencies ())
  (test-dependencies ())
  (foreign-dependencies ())
  (library
    (name (cyclone sxml))
    (description "Utilities to convert sxml to xml or plain text.")))
