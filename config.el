;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

  (map! (:localleader
          (:map clojure-mode-map
            (:prefix ("e" . "eval")
              "b" #'cider-eval-buffer
              )
            (:prefix ("t" . "test")
              "t" #'cider-test-run-test
              "a" #'cider-test-rerun-test
              "b" #'cider-test-show-report
              "n" #'cider-test-run-ns-tests
              "l" #'cider-test-run-loaded-tests
              "p" #'cider-test-run-project-tests
              "f" #'cider-test-rerun-failed-tests
              ))))

;; Disable evil-snipe so that s key works as standard vim substition
;; (after! evil-snipe
;;   (evil-snipe-mode -1))

;;;;;;;;;;;;;;;;
;; Org Config ;;
;;;;;;;;;;;;;;;;
;; Insert time when "todo" marked "done"
(setq org-log-done t)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Disables yas-minor-mode for html yas-snippets conflicts with emmet-expand-line  ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'find-file-hook
          (lambda ()
            (when (string= (file-name-extension buffer-file-name) "html")
              (yas-minor-mode -1))))
