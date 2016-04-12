;; Easy Customization uses this file for its settings.
;; See: https://www.gnu.org/software/emacs/manual/html_node/emacs/Saving-Customizations.html and https://www.gnu.org/software/emacs/manual/html_node/elisp/Standard-File-Names.html#Standard-File-Names
(setq custom-file (locate-user-emacs-file "custom.el"))
(load custom-file)

;; Ensure lein and sbcl can run on OS X.
;; Source: https://www.emacswiki.org/emacs/EmacsApp#toc8
(when (string-equal "darwin" (symbol-name system-type))
  (setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH")))
  (add-to-list 'exec-path "/usr/local/bin"))

;; Add Stable MELPA package archive (HTTP so works with Emacs on Windows).
;; See https://stable.melpa.org/#/getting-started
(require 'package)
(add-to-list 'package-archives
  '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; Bootstrap `package.el'.
(setq package-enable-at-startup nil)
(package-initialize)

;; Bootstrap `use-package'.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; Use some packages.
(require 'use-package)
(use-package rainbow-delimiters
  :ensure t
  :init
  (add-hook 'prog-mode-hook #'rainbow-delimiters-mode))
