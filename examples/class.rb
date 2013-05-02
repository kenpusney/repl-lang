
## define a new class:
k = :type.&({
        attr_reader: [:x],
        attr_writer: [:x],
        attr_accessor: [:z],
        init:   ->(x){  @x = x },
    },Object) ## default superclass: Object 

## make new instance.
z = k.new 1

z.x = 2
z.z = 3
## invokes method.
puts z.x,z.z,k.superclass