
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
    
    def envy
        return @@env
    end
    
    alias_method :<<,:reg
    
    def to_sym
        self.to_s.to_sym
    end
    
    def invoke
        if @@env.any? &->(v){ v[0] == self }
            return @@env.assoc(self)[1]
        end
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
    
    def &(e,*all,&block)
        if e.respond_to? self
            return e.method(self).call *all,&block
        elsif block
            return block.call e,*all
        end
        [e].concat all
    end
end
