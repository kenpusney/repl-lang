require 'repl/polish'

class Object

    def car
        nil
    end
    
    def cdr
        nil
    end
    
    def list(*args)
        arr = [self]
        args.each do |e| arr << e; end
        arr
    end
    
    def cons(e)
        [self,e]
    end
end

class Array
    def car
        if self.length > 0
            return self[0]
        end
    end
    def cdr
        if self.length > 1
            return self[1..-1]
        end
    end
end

undef list
undef car
undef cdr
undef cons