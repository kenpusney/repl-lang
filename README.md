repl-lang
=========

REPL languages

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