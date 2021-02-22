function buffon_drop(n::Int)
    count = 0
    for k = 1:n
        x = rand()
        θ = 2 * pi * rand()
        c = cos(θ)
        if (c > x) || (c < x - 1)
            count += 1
        end
    end
    return count
end

buff_pi(n::Int) = 2n / buffon_drop(n)
