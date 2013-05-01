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