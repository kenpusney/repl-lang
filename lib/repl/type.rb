
class Hash
    def type
        klass = {}
        self.each do |k,v|
            klass[k] = v
        end
        return Class.new do
            klass.each do |k,v|
                define_method(k,&v)
            end
            def initialize(*args)
                if self.respond_to? :init
                    self.init(*args)
                end
            end
        end
    end
    
    alias_method :classify,:type
end
