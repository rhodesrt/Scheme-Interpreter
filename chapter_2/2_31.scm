#lang sicp

(define (treeMap f tree)
  (map (lambda (subTree)
       (if (pair? subTree)
           (treeMap f subTree)
           (f subTree)))
       tree))