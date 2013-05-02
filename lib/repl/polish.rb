
=begin
```ruby
:sym.&(obj,*args,&block)  #=> obj.sym(*args,&block)
```
=end

class Symbol
    def &(e,*all,&block)
        if e.respond_to? self
            return e.method(self).call *all[0..(e.method(self).arity)],&block
        elsif block
            return block.call e,*all
        end
        [e].concat all
    end
end
