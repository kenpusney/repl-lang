
class Symbol
    def make
        return "I am making " + self.to_s
    end
    
    def &(e,*all,&block)
        if e.respond_to? self
            return e.method(self).call *all[0..(e.method(self).arity-1)],&block
        elsif block
            return block.call e,*all
        end
        [e].concat all
    end
end
