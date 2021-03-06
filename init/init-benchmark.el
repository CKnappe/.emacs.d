;;; benchmark.el -- Benchmarking the rest of the init files

;;; Commentary:
;; This should only be activates to find performance issues during load

;;; Code:
(require 'package)
(package-initialize)
(if (not (package-installed-p 'benchmark-init))
	(progn
	  (package-refresh-contents)
	  (package-install 'benchmark-init)))
	  
(eval-when-compile
  (require 'benchmark-init))

(provide 'init-benchmark)
;;; init-benchmark.el ends here
