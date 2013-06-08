
require 'repl/polish'

module REPL
  module MacEval
    KerBind = Kernel.binding
    class <<self
			def env_eval(env=Kernel,&block)
			  return env.instance_eval do
			    # Generate Random Name
			    name = "mtd#{rand 100}".to_sym
			    # Make
			    define_method name,&block
			    # Transfer
			    return_mtd=method(name);
			    undef :"#{name}"

			    # Return
			    return_mtd
			  end if env.class == Class
			end
		end
  end
end

Macro = REPL::MacEval

def defmacro (name,env=Kernel,&block)
  mEval = Macro.env_eval(env,&block)
 	
 	return Kernel.instance_eval do 
 		define_method name,&mEval
	end unless self.respond_to? :define_method

  define_method name,&mEval
end
