function sphere_vol(r)
    return 4/3 * pi * r ^ 3
end

s1 = sphere_vol(8)
println(s1)

s2 = sphere_vol(87)
println(s2)

s3 = sphere_vol(887900)

using Printf
@printf "volume = %0.3f\n" s3


quadratic(a, sqr_term, b) = (-b + sqr_term) / 2a

function quadratic2(a::Float64, b::Float64, c::Float64)
    sqr_term = sqrt(b ^ 2 - 4a*c)
    r1 = quadratic(a, sqr_term, b)
    r2 = quadratic(a, -sqr_term, b)

    r1, r2
end

quad1, quad2 = quadratic2(2.0, -2.0, -12.0)
println("result 1:\t", quad1)
println("result 2:\t", quad2)
