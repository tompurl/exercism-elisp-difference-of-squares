;;; difference-of-squares.el --- Difference of Squares (exercism)

;;; Commentary:

;;; Code:

(defun square-of-sum (n)
  "Find the square of the sum of the first N natural numbers."
  (let ((sum (reduce '+ (number-sequence 1 n))))
    (* sum sum)))

(defun sum-of-squares (n)
  "Find the square of each of the first N natural numbers and return the sum."
  (reduce '+ (mapcar (lambda (x) (* x x)) (number-sequence 1 n))))

(defun difference (n)
  "Find the difference between square-of-sum and sum-of-squares for the first N natural numbers."
  (- (square-of-sum n) (sum-of-squares n)))

(provide 'difference-of-squares)
;;; difference-of-squares.el ends here
