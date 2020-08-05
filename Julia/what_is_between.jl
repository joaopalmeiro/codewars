#!/usr/bin/env julia

function between(a, b)
    [n for n in a:b]
end

println(between(1, 4)) # [1, 2, 3, 4]
println(between(-2, 2)) # [-2, -1, 0, 1, 2]
