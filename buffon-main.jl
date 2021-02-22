using Distributed
@everywhere include("buffon.jl")

function super_buffon(rounds::Int = 10_000, reps::Int = 1_000_000)
    n = rounds * reps
    println("Dropping a needle $(Float64(n)) times")
    count = @distributed (+) for i = 1:rounds
        buffon_drop(reps)
    end
    return 2 * n / count
end
