#lang sicp

(define (treeMap f tree)
  (map (lambda (subTree)
       (if (pair? subTree)
           (treeMap subTree)
           (f subTree)))
       tree))