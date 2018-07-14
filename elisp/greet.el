;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Emacs lisp programming examples ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun print-hello(arg1 arg2)
  """
   Print's hello world to the emacs lisp console
  """
  (interactive)
  (message "Hello World! %s %s" arg1 arg2))

(provide 'greet)
