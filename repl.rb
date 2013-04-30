
class Object
    @@env = []
    def reg(e)
        if @@env.any? &->(v){ v[0] == self }
            @@env.delete(@@env.assoc(self))
        end
        @@env << [self,e]
        @@env.uniq!
        @@env
    end
    
    alias_method :<<,:reg
    
    def to_sym
        self.to_s.to_sym
    end
end

module Kernel
    def make(e,&block)
        begin
            if e.class == Class
                return e.new(&block)
            elsif e.respond_to?(:make)
                return e.make(&block)
            end
            block.call e
        rescue => ex
            e
        end
    end
end

class Symbol
    def make
        return "I am making " + self.to_s
    end
end

