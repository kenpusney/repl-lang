
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