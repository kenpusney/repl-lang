
## define a new class:
k = :type.&({
        init:   ->(x){  @x = x },
        x:      ->(){ @x },
    })

## make new instance.
z = k.new 1

## invokes method.
puts z.x