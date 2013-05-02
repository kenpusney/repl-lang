
=begin

## What is REPL

  * (loop (print (eval (read))))
  * Read-Eval-Print Loop
  * Ruby-Enlighted Programming Language
  * **Ruby's Endless Programming Language**

=end


#  `envy` extension for `Object`
require 'repl/envy'

#  `make` extension for `Kernel`
require 'repl/make'

#  polish notation for `Symbol`
require 'repl/polish'

#  ugly lisp
require 'repl/uglisp'

#  simplified type literal
require 'repl/type'