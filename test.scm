(import (scheme base)
	(cyclone test)
	(cyclone sxml))

(define (run-tests)
  (test-begin "SXML")

  (test "sxml->xml"
	"<html><head>Test</head><body><h1 name=\"t\">Test</h1></body></html>"
	(sxml->xml '(html (head "Test") (body (h1 (@ (name "t")) "Test")))))

    (test "sxml-display-as-html"
	"<html><head>Test</head><body><h1>Test</h1></body></html>"
	(parameterize ((current-output-port (open-output-string)))
	  (sxml-display-as-html '(html (head "Test") (body (h1 "Test"))))
	  (get-output-string (current-output-port))))

    (test "sxml-display-as-text"
	  "Test\n"
	(parameterize ((current-output-port (open-output-string)))
	  (sxml-display-as-text '(html (head "Test") (body (h1 "Test"))))
	  (get-output-string (current-output-port))))

    (test "sxml-strip"
	  "TestTest"
	  (sxml-strip '(html (head "Test") (body (h1 "Test")))))

    (test "html-escape"
	  "&lt;"
	  (html-escape "<"))

    (test "html-tag->string"
	  "<pre name=\"test\">"
	  (html-tag->string 'pre '((name . "test"))))

    (test-end))

(run-tests)
