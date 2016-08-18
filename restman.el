;;; restman.el --- a simple restclient package

;; Copyright (C) 2016 Chaz

;; Author: Chaz <chazwize@gmail.com>
;; Keywords: http
;; Version: 0.0.11

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; This is http rest client

;;; Code:

(require 'button)

(defun restman/create-buffer ()
  (let ((-buf (generate-new-buffer "untitled")))
    (switch-to-buffer -buf)
    (funcall initial-major-mode)
    (setq buffer-offer-save t))
  )

(defun restman/collect-line ()
  (next-line)
  (insert-button "fsf"
                 'action (lambda (x) (browse-url (button-get x 'url)))
                 'url "http://www.fsf.org")
  )

(defun restman/init ()
  (interactive)
  (delete-other-windows)
  ;;(split-window-left)
  ;;(insert-button "foo" 'action (lambda (x) (find-file user-init-file)))
  (active-minibuffer-window)

  )

(provide 'restman)
;;; restman.el ends here
