
=begin

## May seems like this:

some_macro(args)
#=> Macro.expand(:some_macro,[args],Kernel)
				 ||
				 VV
## (macro_name,macro_arguments,macro_envrioment)

=end

require 'repl/polish'

module REPL
	module MacEval
		class << self
			def expand(name,args,env = Kernel)

			end
		end
	end
end

Macro = REPL::MacEval

def defmacro (args,env=Kernel,&block)
	if args.class != Array
		name = args.to_sym
		env.instance_eval do
			define_method(name,&block)
		end
	else
	end
end
