(defmodule cisp_lfe_otp-app
  (behaviour application)
  ;; app implementation
  (export
   (start 2)
   (stop 1)))

;;; --------------------------
;;; application implementation
;;; --------------------------

(defun start (_type _args)
  (logger:set_application_level 'cisp_lfe_otp 'all)
  (logger:info "Starting cisp_lfe_otp application ...")
  (cisp_lfe_otp-sup:start_link))

(defun stop (_state)
  (cisp_lfe_otp-sup:stop)
  'ok)
