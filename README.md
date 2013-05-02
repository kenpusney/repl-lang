repl-lang
=========

The REPL Programming Language

## Why REPL?

> 'Cause many languages do not have a REPL.

  * see [Why REPL](https://github.com/kenpusney/repl-lang/wiki/Why-REPL) for more information

#### What is REPL

  * (loop (print (eval (read))))
  * Read-Eval-Print Loop
  * Ruby-Enlighted Programming Language
  * **Ruby's Endless Programming Language**

#### `endless`

  * lambda literal
  * type/class literal(`repl/type`)
  * `?:` / `and` / `or` instead of `if..else`
  * modifier expression(`if`/`while`/`unless`/`until`)

## Install

```shell
git clone git://github.com/kenpusney/repl-lang.git
cd repl-lang && ./repl
```

## Examples

```ruby
# make expression
make Object

# polish notation and `&` operator
:new & Object
:+.& 1,2
```

#### UGLisp

```ruby
require 'repl/uglisp'
(:list.& 1,2,3,4)
#=> [1,2,3,4]

(:car.& (:list.& 1,2,3,4))
#=> 1

(:cdr.& (:list.& 1,2,3,4))
#=> [2,3,4]
```

### Endless Programming with Ruby
```ruby
require 'repl/type'

## define a new class:
k = :type.&({
        attr_reader: [:x],
        attr_writer: [:x],
        attr_accessor: [:z],
        init:   ->(x){  @x = x },
    },Object) ## default superclass: Object 

```