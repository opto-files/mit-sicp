Kinds of Expressions:

Numbers
Symbols
Lambda-Expressions
Definitions
Conditionals
Combinations

Substitution Rule:

To eval an app:
   Eval the operator to get procedure
   Eval operands to get arguments
   Apply procedure to argument
     Copy body of procedure
     Substitute arguments supplied for
     formal parameters
     Eval new body

;;What have they got against calling things functions?

;;I wanna open up 'plus' and look inside
;;This guy's parting is on point

Conditionals

IFs look like

(IF <predicate>
    <consequent>
    <alternative>)

To eval an IF:
   Eval the predicate
     If it is true
       Eval the consequent
     otherwise
       Eval the alternative

;;I forgot to make notes during all the interesting building a plus bit

Fibonacci

naive-fib sucks balls. Bare recursion and multiple computations of the same problem.

