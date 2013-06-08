
class Object

  def to_sym
    self.to_s.to_sym
  end
  
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