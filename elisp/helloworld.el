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
