repl-lang
=========

the REPL language

### Why REPL?

> 'Cause many languages do not have a REPL.

  * see [Why REPL](https://github.com/kenpusney/repl-lang/wiki/Why-REPL) for more information

### Install

```shell
git clone git://github.com/kenpusney/repl-lang.git
cd repl-lang && ./repl
```

### Examples

```ruby

# make expression
make :love
# => "I am making love"

# polish notation and `&` operator
:make & :love
:new & Object
:+.& 1,2
```

### uglisp

```ruby
require 'repl/uglisp'
(:list.& 1,2,3,4)
#=> [1,2,3,4]

(:car.& (:list.& 1,2,3,4))
#=> 1

(:cdr.& (:list.& 1,2,3,4))
#=> [2,3,4]
```
