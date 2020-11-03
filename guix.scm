(use-modules (guix packages)
             (guix gexp)
             ((guix git-download) #:select (git-predicate))
             (uio packages mreg))

(define %source-directory (dirname (current-filename)))

(package
  (inherit mreg-cli)
  (version "dev")
  (source (local-file %source-directory
                      #:recursive? #t
                      #:select? (git-predicate %source-directory))))
