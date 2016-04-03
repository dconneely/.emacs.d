;; Customize uses this file for its settings.
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; Ensure lein and sbcl can run.
(when (string-equal "darwin" (symbol-name system-type))
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (add-to-list 'exec-path "/usr/local/bin"))

;; Bootstrap `package.el'.
(setq package-enable-at-startup nil)
(package-initialize)

;; Bootstrap `use-package'.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Use some packages.
(use-package rainbow-delimiters
	     :ensure t
	     :init
	     (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))
