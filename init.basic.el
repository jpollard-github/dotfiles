(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "/Users/jasonp/.emacs.d/better-defaults")
(require 'better-defaults)

(defvar my-packages '(projectile
                      clojure-mode
                      cider))

(dolist (p my-packages)
  (unless (package-installed-p p)
    (package-install p)))

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

(add-to-list 'exec-path "/usr/local/bin")
