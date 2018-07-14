;;
;; Prints hello world by loading the greet.el
;;

(load-file "./greet.el")
(load "~/prv/github/playground/elisp/greet")
(require 'greet)



(expand-file-name "greet23")

(unload-feature 'greet)


(add-to-list 'load-path default-directory)
(require 'greet-autoloads)

(print-hello "Welcome" "Sunil")

(featurep 'greet)
