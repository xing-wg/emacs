(setq-default
 mode-line-format
 '(:eval (let* ((left '((:eval (when (bound-and-true-p meow-mode) meow--indicator))))
		(right '((:eval "%l:%c")
			 " "
			 (:eval "%b")
			 " - "
			 (:eval mode-name)
			 (:eval vc-mode)
			 " "))
		(left-str (format-mode-line left))
		(right-str (format-mode-line right))
		(middle-str (make-string
			     (- (window-width)
				(+ (string-width left-str) (string-width right-str)))
			     32)))
	   (format "%s%s%s"
		   left-str
		   middle-str
		   right-str))))


(provide 'init-modeline)
