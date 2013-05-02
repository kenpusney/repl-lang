
## define a new class:
k = :classify.&({
        init:   ->(x){  @x = x },
        x:      ->(){ @x },
    })

## make new instance.
z = k.new 1

## invokes method.
puts z.x