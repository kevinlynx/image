(in-package #:cl-user)

(asdf:defsystem #:image
  :version "0.11"
  :author "Ingvar Mattsson <ingvar@hexapodia.net>"
  :maintainer "Kevin Lynx <kevinlynx@gmail.com>"
  :description "An image-drawing with some drawing primitives"
  :license "MIT"
  :depends-on (#:skippy #:zpng #:gzip-stream #:flexi-streams
                #+support-clx #:clx)
  :components ((:file "package")
	       (:file "helpers" :depends-on ("package"))
	       (:file "image" :depends-on ("package"))
	       (:file "image-text" :depends-on ("package" "image"))
            #+support-clx(:file "x11" :depends-on ("package" "image"))
	       (:file "pcf-constants" :depends-on ("package"))
	       (:file "read-pcf" :depends-on ("package" "pcf-constants"))
	       (:file "imports" :depends-on ("package" "image" "helpers"))
	       (:file "exports" :depends-on ("package" "image" 
                                            #+support-cls "x11"))))
