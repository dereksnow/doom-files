;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

  (map! (:localleader
          (:map clojure-mode-map
            (:prefix ("e" . "eval")
              "b" #'cider-eval-buffer
              ))))

;; Disable evil-snipe so that s key works as standard vim substition
;; (after! evil-snipe
;;   (evil-snipe-mode -1))

;;;;;;;;;;;;;;;;
;; Org Config ;;
;;;;;;;;;;;;;;;;
;; Insert time when "todo" marked "done"
(setq org-log-done t)
