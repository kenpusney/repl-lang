
require 'repl/polish'

=begin
## Usage

```ruby
c = :type.&({
  #supporting :attr_reader/writer/accessor
  attr_reader: [:x,:y,:z],
  init: ->(){   #for `initialize`
    @x = 1
    @y = 2
    @z = 3
    }
  #Specify superclass
  },Object)
z = c.new
puts z.x,z.y,z.z,z.superclass
```

=end
class Hash
  def type(*parent)
  parent = parent.empty? ? Object : parent[0]
  klass = self
    return Class.new(parent) do
      klass.each do |k,v|
        v.class == Array and v.each do |val|
            case k
              when :attr_reader 
                attr_reader val
              when :attr_writer 
                attr_writer val
              when :attr_accessor 
                attr_accessor val
            end
          end
        v.class == Proc and define_method(k,&v)
      end
      def initialize(*args)
        self.init(*args) if self.respond_to? :init
      end
    end
  end
  
  alias_method :classify,:type
end
