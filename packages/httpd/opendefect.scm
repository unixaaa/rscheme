
(define (open-defect-responder remains query data)
  (if (and data
	   (not (null? query))
	   (eq? 'POST (cdr (assq 'request-type query))))
      (html
       (title (display "Defect Open Response"))
       (header-1 (display "Defect Open Response"))
       (format #t "~d bytes were received\n" (string-length data))
       (preformatted (print data)))
      (html
       (title (display "Defect Open Request"))
       (header-1 (display "Defect Open Request"))
       (newline)
       (input-form 
	(POST "open")

	(header-2 (display "0. Identification"))
	(display "In order to accept this defect, we have to know\n")
	(display "who you are and how to reach you.\n")
	(display "If you already have an account on this system,\n")
	(display "enter your user id in the following field:\n")
	(par)
	(display "system login")
	(display ": ")
	(input-field name 12)
	(par)
	(header-2 (display "1. System configuration"))
	(display "We also need to know what system configuration you\n")
	(display "are using.  Enter the build ID of the system you are\n")
	(display "running (this is a string like ")
	(code (display "RScheme (v0.6.1/4/32, 95.12.07)"))
	(display " that is usually displayed when starting up RScheme.\n")
	(par)
	(input-field systemid 32)
	(par)
	(display "This information may also be available by running the\n")
	(display "unix program ")
	(code (display "what"))
	(display " against the RScheme executable and looking for\n")
	(display "a parenthesized comment starting with \n")
	(code (display "RS"))
	(display ", for example:\n")
	(par)
	(preformatted (display "corelib corelib/apply.scm[384253952] (RS v0.6.1/4/32, 95.12.07)\n"))
	(par)

	(display "Enter a complete-as-possible description of the defect\n")
	(par)
	(big-text-field 'description 10 50 "")

	(submit-button 'submit "Open Defect")
	(par)))))
