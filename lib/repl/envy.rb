
class Object

    def to_sym
        self.to_s.to_sym
    end
        
    def invoke(sym)
        if sym.class == Symbol and self.respond_to? sym
            self.method(sym)
        end
    end
    
    alias_method :%,:invoke
    
    def apply(*args)
        if self.respond_to? :arity and self.respond_to? :call
            self.call(*args[0..(self.arity-1)])
        end
    end
    
end

class NilClass
    def method_missing(mtd,*args,&block)
        nil
    end
end