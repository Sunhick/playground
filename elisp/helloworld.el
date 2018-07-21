;;
;; Prints hello world by loading the greet.el
;;

;; (load-file "./greet.el")
;; (load "~/prv/github/playground/elisp/greet")
;; (require 'greet)
;; (expand-file-name "greet23")

(defun is-greet-loaded()
  (if (featurep 'greet)
      (message "greet feature is loaded")
    (message "greet feature isn't loaded")))

(add-to-list 'load-path default-directory)
(require 'greet-autoloads)

(is-greet-loaded)

(print-hello "Welcome" "Sunil")

(is-greet-loaded)

(add-numbers 1 1)

;; unload the feature
(unload-feature 'greet-autoloads)
(unload-feature 'greet)

(quote (1 2 3))

'(1 (2 3 4) (4) ())

(car '(1 2 3 4))
(cdr '(1 2 3 4))
(cons 99 '(1 2 3 4))
(cons '(1 2 3) '( 4 5 6))


;; elisp variable can either point to a variable space
;; or a function space. it will evaluate the variable based
;; on the context. here cube is treated a function in (cube 3)
;; just cube as a variable with string value "foo".
(fset 'cube (lambda (x) (* x x x)))
(setq cube "foo")
(cube 3)
cube
(#'cube 6)


;; function ending in p returns a bool (predicate)
(oddp 3)

(kbd "C-x h")

major-mode

;; (add-hook 'emacs-lisp-mode
;;           (lambda()
;;             (local-set-key (kbd "M-t") (message "hello"))))

(describe-function 'print-hello)

(defun acronym (input)
  (let ((words (split-string input "\\W+")))
    (mapconcat (lambda (word) (upcase (substring word 0 1))) words "")))

(acronym "Por Rot Nont")
