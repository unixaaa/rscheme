
(define *cert*
  (pem-decode
   (string-join
    ""
    '("MIICAjCCAYwCAQAwDQYJKoZIhvcNAQEEBQAwbDELMAkGA1UEBhMCVVMxDjAMBgNV"
      "BAgTBVRleGFzMQ8wDQYDVQQHEwZBdXN0aW4xFjAUBgNVBAoTDVh5bnRoZXNpcyBM"
      "TEMxJDAiBgNVBAMTG3N0YXIud2VzdGdhdGUueHludGhlc2lzLmNvbTAeFw0wMzA5"
      "MDUxNDMyMzhaFw0wMzEwMDUxNDMyMzhaMGwxCzAJBgNVBAYTAlVTMQ4wDAYDVQQI"
      "EwVUZXhhczEPMA0GA1UEBxMGQXVzdGluMRYwFAYDVQQKEw1YeW50aGVzaXMgTExD"
      "MSQwIgYDVQQDExtzdGFyLndlc3RnYXRlLnh5bnRoZXNpcy5jb20wfDANBgkqhkiG"
      "9w0BAQEFAANrADBoAmEAut0GCj3jaUn12ftyHjfnMDN77XCY7WojVnxcbFYOOxZ9"
      "P9q1PNRvsEMJ0j6L+4IV66iI2DcyqucNjLlUiSXW/oipvZ8CDPi439cR4IR80YOF"
      "Ej+D8UgmHP2i1OCdNDr9AgMBAAEwDQYJKoZIhvcNAQEEBQADYQBlElkzd6XQrdzx"
      "YNhxdxPL8FVYNhrMmjbu5BxymhA5dfEhOVI52rJdvFUq2acZzMHCvMmNwY+jqrnM"
      "Jm8HXnVOue1VdcH6j1CL40G81OqjHV3jt+fjQc+USj+cOiicQZA="))))


#|
   (ber-parse (to-substring *cert*))
|#
